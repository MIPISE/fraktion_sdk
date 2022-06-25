# frozen_string_literal: true

require "test_helper"
require_relative "create_managed/create_test.rb"

class TestFraktionSdk < Minitest::Test
  include FraktionSdk::Create_managed
  #def test_that_it_has_a_version_number
  #  refute_nil ::FraktionSdk::VERSION
  #end

  #def test_it_does_something_useful
  #  assert false
  #end
end
