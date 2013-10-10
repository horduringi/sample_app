require 'spec_helper'

describe "surgeries/show" do
  before(:each) do
    @surgery = assign(:surgery, stub_model(Surgery))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
