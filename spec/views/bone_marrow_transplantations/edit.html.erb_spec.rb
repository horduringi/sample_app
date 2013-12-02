require 'spec_helper'

describe "bone_marrow_transplantations/edit" do
  before(:each) do
    @bone_marrow_transplantation = assign(:bone_marrow_transplantation, stub_model(BoneMarrowTransplantation))
  end

  it "renders the edit bone_marrow_transplantation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bone_marrow_transplantations_path(@bone_marrow_transplantation), :method => "post" do
    end
  end
end
