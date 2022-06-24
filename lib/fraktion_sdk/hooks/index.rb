module FraktionSdk
  module Hooks
    def self.index
      FraktionSdk.authenticated do |access_token, token_type|
        conn.get(generate_uri, "Content-Type" => "application/json") do |req|
          req.headers['Authorization'] = "#{token_type} #{access_token}" if access_token && token_type
        end
      end
    end
  end
end