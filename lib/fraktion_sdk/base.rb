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

    def auth
      conn(request_content_type: :url_encoded).post("#{FraktionSdk.configuration.url_auth}", {token: FractionSdk.configuration.token }) 
      #do |req|
      #end
    end

    def conn
      FraktionSdk.conn(request_content_type: :url_encoded)
    end
    
    def authenticated
      return yield(nil, nil) unless FraktionSdk.configuration.token == "production"
      response = auth
      if response.success?
        access_token, token_type = response.body.values_at('access_token', 'token_Type')
        response = yield(access_token, token_type)
      end
      response
    end
  end
end