require 'spec_helper'

describe "CytostaticDrugGivens" do
  describe "GET /cytostatic_drug_givens" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cytostatic_drug_givens_path
      response.status.should be(200)
    end
  end
end
