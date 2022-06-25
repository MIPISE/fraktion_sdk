module FraktionSdk
  module Inject
    module Transfer
      extend Helpers
      def self.create(hash = {})
        FraktionSdk.authenticated do |access_token, token_type|
          #required_keys = %i[from txs]
          #params = ensure_keys(hash, required_keys)
          puts "nicolas"
          conn.post(generate_uri, hash,"Content-Type" => "application/json") do |req|
            req.headers['Authorization'] = "#{token_type} #{access_token}" if access_token && token_type
          end
        end
      end
    end
  end
end