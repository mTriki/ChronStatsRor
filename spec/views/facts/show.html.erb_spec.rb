require 'spec_helper'

describe "facts/show.html.erb" do
  before(:each) do
    @fact = assign(:fact, stub_model(Fact,
      :match_id => 1,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
