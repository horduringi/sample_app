require 'spec_helper'

describe "cytostatic_drug_given_bone_marrows/index" do
  before(:each) do
    assign(:cytostatic_drug_given_bone_marrows, [
      stub_model(CytostaticDrugGivenBoneMarrow,
        :cytostaticdrugid => 1,
        :journal => nil,
        :totalcumulateddosemg => "9.99",
        :totalcumulateddoseunits => "9.99",
        :dosequality => 2,
        :anthracyclinesbolusinfnoyes => 3,
        :anthracyclinesbolusinf => 4,
        :cardioprotectants => 5,
        :bone_marrow_transplantation => nil
      ),
      stub_model(CytostaticDrugGivenBoneMarrow,
        :cytostaticdrugid => 1,
        :journal => nil,
        :totalcumulateddosemg => "9.99",
        :totalcumulateddoseunits => "9.99",
        :dosequality => 2,
        :anthracyclinesbolusinfnoyes => 3,
        :anthracyclinesbolusinf => 4,
        :cardioprotectants => 5,
        :bone_marrow_transplantation => nil
      )
    ])
  end

  it "renders a list of cytostatic_drug_given_bone_marrows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
