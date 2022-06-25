describe "Accounts : List account information" do
  it "call api in response with status = 200" do
    accounts_address = FraktionSdk::Accounts.index
    assert_equal 200, accounts_address.status
  end

  it "call api with limit and offset params in response with status = 200" do
    accounts_address = FraktionSdk::Accounts.index({limit: 0, offset: 10})
    assert_equal 200, accounts_address.status
  end
end