require 'spec_helper'

describe "cytostatic_drug_given_bone_marrows/new" do
  before(:each) do
    assign(:cytostatic_drug_given_bone_marrow, stub_model(CytostaticDrugGivenBoneMarrow,
      :cytostaticdrugid => 1,
      :journal => nil,
      :totalcumulateddosemg => "9.99",
      :totalcumulateddoseunits => "9.99",
      :dosequality => 1,
      :anthracyclinesbolusinfnoyes => 1,
      :anthracyclinesbolusinf => 1,
      :cardioprotectants => 1,
      :bone_marrow_transplantation => nil
    ).as_new_record)
  end

  it "renders new cytostatic_drug_given_bone_marrow form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cytostatic_drug_given_bone_marrows_path, :method => "post" do
      assert_select "input#cytostatic_drug_given_bone_marrow_cytostaticdrugid", :name => "cytostatic_drug_given_bone_marrow[cytostaticdrugid]"
      assert_select "input#cytostatic_drug_given_bone_marrow_journal", :name => "cytostatic_drug_given_bone_marrow[journal]"
      assert_select "input#cytostatic_drug_given_bone_marrow_totalcumulateddosemg", :name => "cytostatic_drug_given_bone_marrow[totalcumulateddosemg]"
      assert_select "input#cytostatic_drug_given_bone_marrow_totalcumulateddoseunits", :name => "cytostatic_drug_given_bone_marrow[totalcumulateddoseunits]"
      assert_select "input#cytostatic_drug_given_bone_marrow_dosequality", :name => "cytostatic_drug_given_bone_marrow[dosequality]"
      assert_select "input#cytostatic_drug_given_bone_marrow_anthracyclinesbolusinfnoyes", :name => "cytostatic_drug_given_bone_marrow[anthracyclinesbolusinfnoyes]"
      assert_select "input#cytostatic_drug_given_bone_marrow_anthracyclinesbolusinf", :name => "cytostatic_drug_given_bone_marrow[anthracyclinesbolusinf]"
      assert_select "input#cytostatic_drug_given_bone_marrow_cardioprotectants", :name => "cytostatic_drug_given_bone_marrow[cardioprotectants]"
      assert_select "input#cytostatic_drug_given_bone_marrow_bone_marrow_transplantation", :name => "cytostatic_drug_given_bone_marrow[bone_marrow_transplantation]"
    end
  end
end
