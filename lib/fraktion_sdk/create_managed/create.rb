module FraktionSdk
  module Create_managed
    extend Helpers
    class << self
      def create(hash = {})
        FraktionSdk.authenticated do |token|
          conn.post(generate_uri, hash.to_json,"Content-Type" => "application/json") do |req|
            req.headers['X-Csrf-Token'] = "#{token}" if token
          end
        end
      end
    end
  end
end