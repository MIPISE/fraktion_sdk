module FraktionSdk
  module Inject
    module Whitelist
      extend Helpers
      def self.create(hash = {})
        FraktionSdk.authenticated do |token|
          required_keys = %i[list]
          params = ensure_keys(hash, required_keys)
          conn.post(generate_uri, params.to_json,"Content-Type" => "application/json") do |req|
            req.headers['X-Csrf-Token'] = token if token
          end
        end
      end
    end
  end
end
