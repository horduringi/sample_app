require 'spec_helper'

describe "relapses/edit" do
  before(:each) do
    @relapse = assign(:relapse, stub_model(Relapse,
      :number => 1
    ))
  end

  it "renders the edit relapse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relapses_path(@relapse), :method => "post" do
      assert_select "input#relapse_number", :name => "relapse[number]"
    end
  end
end
