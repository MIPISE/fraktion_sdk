describe "Injections : List injections information" do
  it "call api, response is in integer" do
    total_injections = FraktionSdk::Injections::Count.index
    assert_equal true, total_injections.body.is_a?(Integer)
  end

  it "call api in response with status = 200" do
    total_injections = FraktionSdk::Injections::Count.index
    assert_equal 200, total_injections.status
  end

  it "call api, response is in integer" do
    total_injections = FraktionSdk::Injections::Count.index({status: "pending"})
    assert_equal true, total_injections.body.is_a?(Integer)
  end

  it "call api in response with status = 200" do
    total_injections = FraktionSdk::Injections::Count.index({status: "pending"})
    assert_equal 200, total_injections.status
  end
end