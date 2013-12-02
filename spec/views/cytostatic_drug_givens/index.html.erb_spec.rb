require 'spec_helper'

describe "cytostatic_drug_givens/index" do
  before(:each) do
    assign(:cytostatic_drug_givens, [
      stub_model(CytostaticDrugGiven),
      stub_model(CytostaticDrugGiven)
    ])
  end

  it "renders a list of cytostatic_drug_givens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
