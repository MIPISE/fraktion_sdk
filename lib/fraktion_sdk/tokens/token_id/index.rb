module FraktionSdk
  module Tokens
    module TokenId
      extend Helpers
      class << self
        def index(hash = {})
          required_keys = %i[token_id]
          params = ensure_keys(hash, required_keys)
          token_id = params[:token_id] || params["token_id"]
          params.delete(:token_id) || params.delete("token_id")
          FraktionSdk.authenticated do |token|
            conn.get(generate_uri.gsub("tokenid", token_id.to_s), "Content-Type" => "application/json") do |req|
              req.headers['X-Csrf-Token'] = token if token
            end
          end
        end
      end
    end
  end
end