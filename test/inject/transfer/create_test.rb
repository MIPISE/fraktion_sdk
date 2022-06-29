describe "Inject transfer" do
  it "call api with get hash in response" do
    params =
    [
      {
        "from": "KT1DvYea45MkJXiGtJcj1SpjjXzRbFohyUGC",
        "txs": [
          {
            "to": "KT1PewFnyzvMTmqYdFxf7w7zTp5gQrCLgwPu",
            "token_id": "3",
            "amount": "1"
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
        "from": "KT1DvYea45MkJXiGtJcj1SpjjXzRbFohyUGC",
        "txs": [
          {
            "to": "KT1PewFnyzvMTmqYdFxf7w7zTp5gQrCLgwPu",
            "token_id": "3",
            "amount": "1"
          }
        ]
      }
    ]
    inject_transfer = FraktionSdk::Inject::Transfer.create(params)
    assert_equal true, inject_transfer.body.has_key?("id")
  end
end