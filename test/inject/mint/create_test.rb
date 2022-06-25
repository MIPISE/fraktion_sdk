describe "Mint : Mint a token" do
  it "call api " do
    params = {
      "owners": [
        {
          "address": "tz1Mxsc66En4HsVHr6rppYZW82ZpLhpupToC",
          "amount": "50"
        },
        {
          "address": "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV",
          "amount": "50"
        }
      ],
      "info": {
        "metadata": {
          "name": "<token_name>"
        }
      },
      "options": {}
    }
    injection = FraktionSdk::Inject::Mint.create(params)
    assert_equal 200, injection.status
  end
end