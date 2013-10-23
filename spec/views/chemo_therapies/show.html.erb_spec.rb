require 'spec_helper'

describe "chemo_therapies/show" do
  before(:each) do
    @chemo_therapy = assign(:chemo_therapy, stub_model(ChemoTherapy))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
