require 'spec_helper'

describe "chemo_therapies/index" do
  before(:each) do
    assign(:chemo_therapies, [
      stub_model(ChemoTherapy),
      stub_model(ChemoTherapy)
    ])
  end

  it "renders a list of chemo_therapies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
