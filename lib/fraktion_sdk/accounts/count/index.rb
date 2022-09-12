module FraktionSdk
  module Accounts
    module Count
      extend Helpers
      def self.index
        FraktionSdk.authenticated do |token|
          conn.get(generate_uri,"Content-Type" => "application/json") do |req|
            req.headers['X-Csrf-Token'] = "#{token}" if token
          end
        end
      end
    end
  end
end