require 'spec_helper'

describe "cytostatic_drug_given_bone_marrows/show" do
  before(:each) do
    @cytostatic_drug_given_bone_marrow = assign(:cytostatic_drug_given_bone_marrow, stub_model(CytostaticDrugGivenBoneMarrow,
      :cytostaticdrugid => 1,
      :journal => nil,
      :totalcumulateddosemg => "9.99",
      :totalcumulateddoseunits => "9.99",
      :dosequality => 2,
      :anthracyclinesbolusinfnoyes => 3,
      :anthracyclinesbolusinf => 4,
      :cardioprotectants => 5,
      :bone_marrow_transplantation => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(//)
  end
end
