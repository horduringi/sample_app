require 'spec_helper'

describe "cytostatic_drug_givens/edit" do
  before(:each) do
    @cytostatic_drug_given = assign(:cytostatic_drug_given, stub_model(CytostaticDrugGiven))
  end

  it "renders the edit cytostatic_drug_given form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cytostatic_drug_givens_path(@cytostatic_drug_given), :method => "post" do
    end
  end
end
