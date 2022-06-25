describe "Whitelist Updates Count : Total number of whitelist updates" do
  it "call api, response is a integer" do
    accounts_address = FraktionSdk::Accounts::Updates::Count.index
    assert_equal true, accounts_address.body.to_i.is_a?(Integer)
  end

  it "call api in response with status = 200" do
    accounts_address = FraktionSdk::Accounts::Updates::Count.index
    assert_equal 200, accounts_address.status
  end

  it "call api in response with params address" do
    accounts_address = FraktionSdk::Accounts::Updates::Count.index({ address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV" })
    assert_equal true, accounts_address.body.to_i.is_a?(Integer)
  end

  it "call api in response with params, status = 200" do
    accounts_address = FraktionSdk::Accounts::Updates::Count.index({ address: "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV" })
    assert_equal 200, accounts_address.status
  end
end