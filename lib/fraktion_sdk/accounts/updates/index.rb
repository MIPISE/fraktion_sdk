module FraktionSdk
  module Accounts
    module Updates
      extend Helpers
      def self.index(hash = {})
        FraktionSdk.authenticated do |access_token, token_type|
          conn.get(generate_uri, hash,"Content-Type" => "application/json") do |req|
            req.headers['X-Csrf-Token'] = token if token
          end
        end
      end
    end
  end
end
