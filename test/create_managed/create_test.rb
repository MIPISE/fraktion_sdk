require_relative "test_helper"

describe "Create managed" do
  it "call api Create managed" do
    create_managed = FraktionSdk::Create_managed.create.body
    assert_equal true, create_managed.has_key?("hash")
  end
end