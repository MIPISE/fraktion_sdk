require 'faraday_middleware'

module FraktionSdk
  module Base
    def conn(request_content_type: :json)
      return @conn[request_content_type] if defined?(@conn) && @conn[request_content_type]
      @conn ||= {}
      @conn[request_content_type] = Faraday.new(
        url: "https://#{FraktionSdk.configuration.url_path}",
        headers: { 'accept' => 'application/json;charset=UTF-8',
                   'Content-type' => 'application/x-www-form-urlencoded' }
        ) do |conn|
          conn.request request_content_type
          conn.response :json, :content_type => /\bjson$/
          conn.adapter Faraday.default_adapter
        end
      @conn[request_content_type]
    end

    def login(challenge_id, challenge)
      connect(request_content_type: :url_encoded).post("login") do |req|
      end
    end

    def auth
      conn(request_content_type: :url_encoded).get("connect") do |req|
        request.headers['X-Csrf-Token'] = FraktionSdk.configuration.token 
      end
    end

    def authenticated
      return yield(nil, nil) unless FraktionSdk.configuration.token == "production"
      response = auth
      if response.success?
        #access_token, token_type = response.body.values_at('access_token', 'token_Type')
        if response.body.values_at('token').nil?
          challenge_id, challenge = response.body.values_at('challenge_id', 'challenge')
          result_login = login(challenge_id, challenge)
          token = response.body.values_at('token')
          FraktionSdk.configuration.token = token
          response = auth
          response = yield(response.body.values_at('token'))
        else
          response = yield(response.body.values_at('token'))
        end
      end
      response
    end
  end
end