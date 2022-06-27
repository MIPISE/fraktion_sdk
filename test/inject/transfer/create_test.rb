describe "Inject transfer" do
  it "call api with get hash in response" do
    params =     
    [
      {
        "from": "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV",
        "txs": [
          {
            "to": "KT19f2HYzjoXkvUKwaJmtVNmE6uq4vdhy9Ws",
            "token_id": "5",
            "amount": "35"
          }
        ]
      }
    ]
    inject_transfer = FraktionSdk::Inject::Transfer.create(params)
    assert_equal true, inject_transfer.body.has_key?("hash")
  end

  it "call api with get id" do
    params = 
    [
      {
        "from": "KT1ScS8wnxNiQiBNC9Pe5gPLpp6DmizFLFcV",
        "txs": [
          {
            "to": "KT19f2HYzjoXkvUKwaJmtVNmE6uq4vdhy9Ws",
            "token_id": "5",
            "amount": "35"
          }
        ]
      }
    ]
    inject_transfer = FraktionSdk::Inject::Transfer.create(params)
    assert_equal true, inject_transfer.body.has_key?("id")
  end
end