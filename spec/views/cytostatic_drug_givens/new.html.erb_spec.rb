require 'spec_helper'

describe "cytostatic_drug_givens/new" do
  before(:each) do
    assign(:cytostatic_drug_given, stub_model(CytostaticDrugGiven).as_new_record)
  end

  it "renders new cytostatic_drug_given form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cytostatic_drug_givens_path, :method => "post" do
    end
  end
end
