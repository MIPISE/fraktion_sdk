module FraktionSdk
  module Tokens
    module Metadata_updates
      module Count
        extend Helpers
        def self.index(hash = {})
          FraktionSdk.authenticated do |token|
            conn.get(generate_uri, hash.to_json,"Content-Type" => "application/json") do |req|
              req.headers['X-Csrf-Token'] = token if token
            end
          end
        end
      end
    end
  end
end