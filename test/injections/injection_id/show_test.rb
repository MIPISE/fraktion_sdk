describe "Injection : Information on the injection" do
  it "call api in response with status = 200" do
    injection = FraktionSdk::Injections::InjectionId.show({injection_id: "fdsfds"})
    assert_equal 200, injection.status
  end
end