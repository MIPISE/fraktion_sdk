describe "Mint : Mint a token" do
  it "call api " do
    functori_address = "KT1GBcTeiQd1G2Ry4Ph3fB9PYpYVy5uz4Y6Z"
    params = {
      "owners": [
        {
          "address": functori_address,
          "amount": "1"
        },
      ],
      "info": { "metadata":  "3vdvd"},
      "options": {}
    }
    injection = FraktionSdk::Inject::Mint.create(params)
    assert_equal 200, injection.status
  end

  it "call api when create token_id" do
    functori_address = "KT1GBcTeiQd1G2Ry4Ph3fB9PYpYVy5uz4Y6Z"
    params = {
      "owners": [
        {
          "address": functori_address,
          "amount": "1"
        },
      ],
      "info": { "metadata":  "3vdvd"},
      "options": { }
    }

    injection = FraktionSdk::Inject::Mint.create(params)
    assert_equal 200, injection.status
  end
end