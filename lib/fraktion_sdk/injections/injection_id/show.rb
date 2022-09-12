module FraktionSdk
  module Injections
    module InjectionId
      extend Helpers
      def self.show(hash = {})
        required_keys = %i[injection_id]
        params = ensure_keys(hash, required_keys)
        injection_id = params[:injection_id] || params["injection_id"]
        params.delete(:injection_id) || params.delete("injection_id")
        FraktionSdk.authenticated do |token|
          conn.get(generate_uri.gsub("injection_id", injection_id.to_s), params.to_json, "Content-Type" => "application/json") do |req|
            req.headers['X-Csrf-Token'] = token if token
          end
        end
      end
    end
  end
end