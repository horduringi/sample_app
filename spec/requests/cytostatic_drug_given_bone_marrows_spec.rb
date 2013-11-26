require 'spec_helper'

describe "CytostaticDrugGivenBoneMarrows" do
  describe "GET /cytostatic_drug_given_bone_marrows" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cytostatic_drug_given_bone_marrows_path
      response.status.should be(200)
    end
  end
end
