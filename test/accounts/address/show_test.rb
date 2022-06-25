describe "Account Information on the account" do
  it "call api with address in response" do
    params = {address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"}
    accounts_address = FraktionSdk::Accounts::Address.show(params)
    assert_equal true, accounts_address.body.has_key?("address")
  end

  it "call api with whitelisted in response" do
    params = {address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"}
    accounts_address = FraktionSdk::Accounts::Address.show(params)
    assert_equal true, accounts_address.body.has_key?("whitelisted")
  end

  it "call api with tokens in response" do
    params = {address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"}
    accounts_address = FraktionSdk::Accounts::Address.show(params)
    assert_equal true, accounts_address.body.has_key?("tokens")
  end
end