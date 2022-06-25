module FraktionSdk
  module Injections
    module InjectionId
      extend Helpers
      def self.show(hash = {})
        required_keys = %i[injection_id]
        params = ensure_keys(hash, required_keys)
        injection_id = params[:injection_id] || params["injection_id"]
        params.delete(:injection_id) || params.delete("injection_id")
        FraktionSdk.authenticated do |access_token, token_type|
          conn.get(generate_uri.gsub("injection_id", injection_id.to_s), params, "Content-Type" => "application/json") do |req|
            req.headers['Authorization'] = "#{token_type} #{access_token}" if access_token && token_type
          end
        end
      end
    end
  end
end