require 'spec_helper'

describe "chemo_therapies/edit" do
  before(:each) do
    @chemo_therapy = assign(:chemo_therapy, stub_model(ChemoTherapy))
  end

  it "renders the edit chemo_therapy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chemo_therapies_path(@chemo_therapy), :method => "post" do
    end
  end
end
