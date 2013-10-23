require 'spec_helper'

describe "relapses/index" do
  before(:each) do
    assign(:relapses, [
      stub_model(Relapse,
        :number => 1
      ),
      stub_model(Relapse,
        :number => 1
      )
    ])
  end

  it "renders a list of relapses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
