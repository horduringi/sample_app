require 'spec_helper'

describe "bone_marrow_transplantations/index" do
  before(:each) do
    assign(:bone_marrow_transplantations, [
      stub_model(BoneMarrowTransplantation),
      stub_model(BoneMarrowTransplantation)
    ])
  end

  it "renders a list of bone_marrow_transplantations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
