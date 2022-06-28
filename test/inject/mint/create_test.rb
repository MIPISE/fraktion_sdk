describe "Mint : Mint a token" do
  it "call api " do
    params = {
      "owners": [
        {
          "address": "tz1Mxsc66En4HsVHr6rppYZW82ZpLhpupToC",
          "amount": "1"
        },
      ],
      "info": "3",
      "options": {}
    }
    injection = FraktionSdk::Inject::Mint.create(params)
    assert_equal 200, injection.status
  end
end