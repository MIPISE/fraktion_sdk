describe "Whitelist Updates : List whitelist updates" do
  it "call api with address in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index
    assert_equal true, accounts_address.body.has_key?("address")
  end

  it "call api with added in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index
    assert_equal true, accounts_address.body.has_key?("added")
  end

  it "call api with operation in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index
    assert_equal true, accounts_address.body.has_key?("operation")
  end

  it "call api with block in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index
    assert_equal true, accounts_address.body.has_key?("block")
  end

  it "call api with level in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index
    assert_equal true, accounts_address.body.has_key?("level")
  end

  it "call api with tsp in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index
    assert_equal true, accounts_address.body.has_key?("tsp")
  end

  it "call api in response with status = 200" do
    accounts_address = FraktionSdk::Accounts::Updates.index
    assert_equal 200, accounts_address.status
  end

  it "call api with address in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index({address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"})
    assert_equal true, accounts_address.body.has_key?("address")
  end

  it "call api with added in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index({address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"})
    assert_equal true, accounts_address.body.has_key?("added")
  end

  it "call api with operation in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index({address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"})
    assert_equal true, accounts_address.body.has_key?("operation")
  end

  it "call api with block in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index({address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"})
    assert_equal true, accounts_address.body.has_key?("block")
  end

  it "call api with level in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index({address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"})
    assert_equal true, accounts_address.body.has_key?("level")
  end

  it "call api with tsp in response" do
    accounts_address = FraktionSdk::Accounts::Updates.index({address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"})
    assert_equal true, accounts_address.body.has_key?("tsp")
  end

  it "call api in response with status = 200 with address params" do
    accounts_address = FraktionSdk::Accounts::Updates.index({address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"})
    assert_equal 200, accounts_address.status
  end
end