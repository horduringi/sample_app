require 'spec_helper'

describe "bone_marrow_transplantations/show" do
  before(:each) do
    @bone_marrow_transplantation = assign(:bone_marrow_transplantation, stub_model(BoneMarrowTransplantation))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
