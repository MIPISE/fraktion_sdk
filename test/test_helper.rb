# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "fraktion_sdk"

require "minitest/autorun"
require "ministest/spec"
require "minitest/reporters"
require "ostruct"

FraktionSdk.configure do |config|
  config.url_path = "https://fraktion-api.functori.com"
end

