require 'spec_helper'

describe "relapses/new" do
  before(:each) do
    assign(:relapse, stub_model(Relapse,
      :number => 1
    ).as_new_record)
  end

  it "renders new relapse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relapses_path, :method => "post" do
      assert_select "input#relapse_number", :name => "relapse[number]"
    end
  end
end
