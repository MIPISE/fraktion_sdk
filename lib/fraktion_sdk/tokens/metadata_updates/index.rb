module FraktionSdk
  module Tokens
    module Metadata_updates
      extend Helpers
      def self.index(hash = {})
        FraktionSdk.authenticated do |access_token, token_type|
          conn.get(generate_uri, hash.to_json,"Content-Type" => "application/json") do |req|
            req.headers['Authorization'] = "#{token_type} #{access_token}" if access_token && token_type
          end
        end
      end
    end
  end
end