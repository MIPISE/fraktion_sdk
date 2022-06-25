describe "Inject : Inject an operation or place it in queue for batch injection" do
  it "create inject" do
    params = [{"destination": "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV",
    "entrypoint": "transfer",
    "param":
     [[{"string": "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV"},
       [[{"string": "KT19f2HYzjoXkvUKwaJmtVNmE6uq4vdhy9Ws"}, {"int": "5"}, {"int": "13"}]]]]}]
      injection = FraktionSdk::Inject.create(params)
      assert_equal 200, injection.status
  end
end