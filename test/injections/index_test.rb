describe "Injections : List injections information" do
  it "call api with tsp in response" do
    accounts = FraktionSdk::Accounts::Updates.index
    assert_equal true, accounts.body.is_a?(Array)
  end

  it "call api in response with status = 200" do
    accounts = FraktionSdk::Injections.index
    assert_equal 200, accounts.status
  end
end