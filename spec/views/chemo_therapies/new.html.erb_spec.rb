require 'spec_helper'

describe "chemo_therapies/new" do
  before(:each) do
    assign(:chemo_therapy, stub_model(ChemoTherapy).as_new_record)
  end

  it "renders new chemo_therapy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chemo_therapies_path, :method => "post" do
    end
  end
end
