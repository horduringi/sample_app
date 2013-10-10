require 'spec_helper'

describe "surgeries/index" do
  before(:each) do
    assign(:surgeries, [
      stub_model(Surgery),
      stub_model(Surgery)
    ])
  end

  it "renders a list of surgeries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
