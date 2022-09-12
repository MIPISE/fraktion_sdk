module FraktionSdk
  module Inject
    module Update_operator
      extend Helpers
      def self.create(hash = {})
        FraktionSdk.authenticated do |token|
          #required_keys = %i[owners info options]
          #params = ensure_keys(hash, required_keys)
          conn.post(generate_uri, hash.to_json,"Content-Type" => "application/json") do |req|
            req.headers['X-Csrf-Token'] = token if token
          end
        end
      end
    end
  end
end