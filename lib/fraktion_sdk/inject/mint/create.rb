module FraktionSdk
  module Inject
    module Mint
      extend Helpers
      def self.create(hash = {})
        FraktionSdk.authenticated do |access_token, token_type|
          required_keys = %i[owners info options]
          params = ensure_keys(hash, required_keys)
          conn.post(generate_uri, params,"Content-Type" => "application/json") do |req|
            req.headers['Authorization'] = "#{token_type} #{access_token}" if access_token && token_type
          end
        end
      end
    end
  end
end