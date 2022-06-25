describe "Inject transfer" do
  it "call api with get hash in response" do
    params = [{"from":"KT1QPQdEBFkmWCJkZwqvE1nLyax4Hu9qvT3n",
               "txs":[{"to":"tz1Mxsc66En4HsVHr6rppYZW82ZpLhpupToC","token_id":"3","amount":"10"},
               {"to":"KT1Cfbuk3TuLthedbn4HsgKV5zT1YQtGpwfi","token_id":"3","amount":"13"}]},
              {"from":"KT1BYZboA4yssjsiCC2QrHodfFjaTzh7NREp",
               "txs":[{"to":"KT1QPQdEBFkmWCJkZwqvE1nLyax4Hu9qvT3n","token_id":"1","amount":"1"},
               {"to":"KT1QPQdEBFkmWCJkZwqvE1nLyax4Hu9qvT3n","token_id":"4","amount":"1"}]}]
    inject_transfer = FraktionSdk::Inject::Transfer.create(params)
    assert_equal true, inject_transfer.body.has_key?("hash")
  end

  it "call api with get id" do
    params = [{"from":"KT1QPQdEBFkmWCJkZwqvE1nLyax4Hu9qvT3n",
               "txs":[{"to":"tz1Mxsc66En4HsVHr6rppYZW82ZpLhpupToC","token_id":"3","amount":"10"},
               {"to":"KT1Cfbuk3TuLthedbn4HsgKV5zT1YQtGpwfi","token_id":"3","amount":"13"}]},
              {"from":"KT1BYZboA4yssjsiCC2QrHodfFjaTzh7NREp",
               "txs":[{"to":"KT1QPQdEBFkmWCJkZwqvE1nLyax4Hu9qvT3n","token_id":"1","amount":"1"},
               {"to":"KT1QPQdEBFkmWCJkZwqvE1nLyax4Hu9qvT3n","token_id":"4","amount":"1"}]}]
    inject_transfer = FraktionSdk::Inject::Transfer.create(params)
    assert_equal true, inject_transfer.body.has_key?("id")
  end
end