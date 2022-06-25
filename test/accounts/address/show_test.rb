describe "Account Information on the account" do
  it "call api in response" do
    create_managed = FraktionSdk::Accounts::Address.show({address: "nicolas"}).body
    puts create_managed
    #assert_equal true, create_managed.has_key?("hash")
  end
end