require 'spec_helper'

describe "surgeries/new" do
  before(:each) do
    assign(:surgery, stub_model(Surgery).as_new_record)
  end

  it "renders new surgery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => surgeries_path, :method => "post" do
    end
  end
end
