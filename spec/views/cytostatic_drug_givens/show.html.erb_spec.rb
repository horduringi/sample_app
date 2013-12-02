require 'spec_helper'

describe "cytostatic_drug_givens/show" do
  before(:each) do
    @cytostatic_drug_given = assign(:cytostatic_drug_given, stub_model(CytostaticDrugGiven))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
