module FraktionSdk
  module Create_managed
    extend Helpers
    class << self
      def create(hash = {})
        FraktionSdk.authenticated do |access_token, token_type|
          conn.post(generate_uri, hash.to_json,"Content-Type" => "application/json") do |req|
            req.headers['Authorization'] = "#{token_type} #{access_token}" if access_token && token_type
          end
        end
      end
    end
  end
end