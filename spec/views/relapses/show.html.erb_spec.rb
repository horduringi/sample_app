require 'spec_helper'

describe "relapses/show" do
  before(:each) do
    @relapse = assign(:relapse, stub_model(Relapse,
      :number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
