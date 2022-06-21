# frozen_string_literal: true
require "active_support"
require "active_support/core_ext/hash/indifferent_access"
require_relative "fraktion_sdk/version"

require_relative 'fraktion_sdk/configuration.rb'
require_relative 'fraktion_sdk/base.rb'
require_relative 'fraktion_sdk/helpers.rb'
require_relative 'fraktion_sdk/create_managed/create.rb'


module FraktionSdk
  class Error < Exception
    attr_reader :code

    def initialize(code)
      @code = code
    end
  end
  # Your code goes here...

  class << self
    include FraktionSdk::Configuration
    include Base 
  end
end
