# frozen_string_literal: true

require "test_helper"


class TestFraktionSdk < Minitest::Test
  require_relative "create_managed/create_test.rb"
  require_relative "inject/transfer/create_test.rb"
  require_relative "accounts/address/whitelisted/index_test.rb"
  require_relative "accounts/address/show_test.rb"
  #def test_that_it_has_a_version_number
  #  refute_nil ::FraktionSdk::VERSION
  #end

  #def test_it_does_something_useful
  #  assert false
  #end
end
