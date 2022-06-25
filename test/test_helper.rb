# frozen_string_literal: true
require "fraktion_sdk"

require "minitest/autorun"
#require "ministest/spec"
require "minitest/reporters"
require "ostruct"
#require_relative "../lib/fraktion_sdk"
$LOAD_PATH.unshift File.expand_path("../lib", __dir__)

FraktionSdk.configure do |config|
  config.url_path = "https://fraktion-api.functori.com"
end

