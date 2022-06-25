describe "Address whitelisted" do
  it "call api with get hash in response" do
    params = { address: "2022-06-15T14:03:55Z" }
    inject_transfer = FraktionSdk::Accounts::Address::Whitelisted.index(params)
  end
end