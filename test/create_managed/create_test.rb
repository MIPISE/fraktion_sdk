#require_relative "test_helper"

describe "Create managed" do
  it "call api Create managed with get hash in response" do
    create_managed = FraktionSdk::CreateManaged.create.body
    assert_equal true, create_managed.has_key?("hash")
  end

  it "call api Create managed with get addresses" do
    create_managed = FraktionSdk::CreateManaged.create.body
    assert_equal true, create_managed.has_key?("addresses")
  end
end