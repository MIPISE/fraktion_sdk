describe "Accounts Count : Total number of accounts" do
  it "call api, response is a integer" do
    accounts_address = FraktionSdk::Accounts::Count.index
    assert_equal true, accounts_address.body.to_i.is_a?(Integer)
  end

  it "call api in response with status = 200" do
    accounts_address = FraktionSdk::Accounts::Count.index
    assert_equal 200, accounts_address.status
  end
end