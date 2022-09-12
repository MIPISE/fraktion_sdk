module FraktionSdk
  module Accounts
    module Address
      extend Helpers
      def self.show(hash = {})
        required_keys = %i[address]
        params = ensure_keys(hash, required_keys)
        address = params[:address] || params["address"]
        params.delete(:address) || params.delete("address")
        FraktionSdk.authenticated do |token|
          conn.get(generate_uri.gsub("address", address.to_s), "Content-Type" => "application/json") do |req|
            req.headers['X-Csrf-Token'] = "#{token}" if token
          end
        end
      end
    end
  end
end