module FraktionSdk
  module Tokens
    module TokenId
      extend Helpers
      def self.index(hash = {})
        required_keys = %i[token_id]
        params = ensure_keys(hash, required_keys)
        token_id = params[:token_id]
        params.delete(:token_id)
        puts params
        puts generate_uri.gsub("tokenid", token_id.to_s)
        #FraktionSdk.authenticated do |access_token, token_type|
        #  conn.get(generate_uri.gsub("tokenid", token_id.to_s), "Content-Type" => "application/json") do |req|
        #    req.headers['Authorization'] = "#{token_type} #{access_token}" if access_token && token_type
        #  end
        #end
      end
    end
  end
end