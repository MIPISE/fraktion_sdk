module FraktionSdk
  module Tokens
    extend Helpers
    def self.index(hash = {})
      FraktionSdk.authenticated do |token|
        hash = hash.to_json unless hash.empty?
        conn.get(generate_uri, hash,"Content-Type" => "application/json") do |req|
          req.headers['X-Csrf-Token'] = token if token
        end
      end
    end
  end
end