require 'spec_helper'

describe "surgeries/edit" do
  before(:each) do
    @surgery = assign(:surgery, stub_model(Surgery))
  end

  it "renders the edit surgery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => surgeries_path(@surgery), :method => "post" do
    end
  end
end
