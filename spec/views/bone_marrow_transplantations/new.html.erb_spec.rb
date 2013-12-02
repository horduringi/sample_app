require 'spec_helper'

describe "bone_marrow_transplantations/new" do
  before(:each) do
    assign(:bone_marrow_transplantation, stub_model(BoneMarrowTransplantation).as_new_record)
  end

  it "renders new bone_marrow_transplantation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bone_marrow_transplantations_path, :method => "post" do
    end
  end
end
