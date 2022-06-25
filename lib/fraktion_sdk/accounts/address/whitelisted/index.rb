module FraktionSdk
  module Accounts
    module Address
      module Whitelisted
        extend Helpers
        def self.index(hash = {})
          required_keys = %i[address]
          params = ensure_keys(hash, required_keys)
          address = params[:address] || params["address"]
          params.delete(:address) || params.delete("address")
          FraktionSdk.authenticated do |access_token, token_type|
            conn.get(generate_uri.gsub("address", address.to_s), "Content-Type" => "application/json") do |req|
              req.headers['Authorization'] = "#{token_type} #{access_token}" if access_token && token_type
            end
          end
        end
      end
    end
  end
end