# frozen_string_literal: true
require "ostruct"
require "digest"
require "active_support"
require "active_support/core_ext/hash/indifferent_access"
require_relative "fraktion_sdk/version"

require_relative 'fraktion_sdk/configuration.rb'
require_relative 'fraktion_sdk/base.rb'
require_relative 'fraktion_sdk/helpers.rb'
require_relative 'fraktion_sdk/create_managed/create.rb'
require_relative 'fraktion_sdk/inject/transfer/create.rb'
require_relative 'fraktion_sdk/inject/create.rb'
require_relative 'fraktion_sdk/inject/mint/create.rb'
require_relative 'fraktion_sdk/inject/transfer/create.rb'
require_relative 'fraktion_sdk/inject/update_operator/create.rb'
require_relative 'fraktion_sdk/inject/whitelist/create.rb'
require_relative 'fraktion_sdk/hook/create.rb'
require_relative 'fraktion_sdk/hooks/index.rb'
require_relative 'fraktion_sdk/info/index.rb'
require_relative 'fraktion_sdk/tokens/token_id/index.rb'
require_relative 'fraktion_sdk/tokens/updates/index.rb'
require_relative 'fraktion_sdk/tokens/updates/count/index.rb'
require_relative 'fraktion_sdk/tokens/index.rb'
require_relative 'fraktion_sdk/tokens/count/index.rb'
require_relative 'fraktion_sdk/tokens/metadata_updates/count/index.rb'
require_relative 'fraktion_sdk/tokens/metadata_updates/index.rb'
require_relative 'fraktion_sdk/accounts/address/show.rb'
require_relative 'fraktion_sdk/accounts/count/index.rb'
require_relative 'fraktion_sdk/accounts/index.rb'
require_relative 'fraktion_sdk/accounts/address/whitelisted/index.rb'
require_relative 'fraktion_sdk/accounts/updates/count/index.rb'
require_relative 'fraktion_sdk/accounts/updates/index.rb'
require_relative 'fraktion_sdk/injections/injection_id/show.rb'
require_relative 'fraktion_sdk/injections/count/index.rb'
require_relative 'fraktion_sdk/injections/index.rb'
require_relative 'fraktion_sdk/version/index.rb'


module FraktionSdk
  class Error < Exception
    attr_reader :code

    def initialize(code)
      @code = code
    end
  end
  # Your code goes here...

  class << self
    include Configuration
    include Base 
  end
end
