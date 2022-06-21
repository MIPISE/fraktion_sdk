module FraktionSdk
  module Create_managed
    extend Helpers

    class << self
      def create
        puts generate_uri
        #FraktionSdk.authenticated do |access_token, token_type|
        #  conn_client.get(generate_uri) do |req|
          
        #  end
        #end
      end
    end
  end
end