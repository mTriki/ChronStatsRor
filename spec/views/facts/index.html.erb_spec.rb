require 'spec_helper'

describe "facts/index.html.erb" do
  before(:each) do
    assign(:facts, [
      stub_model(Fact,
        :match_id => 1,
        :type => "Type"
      ),
      stub_model(Fact,
        :match_id => 1,
        :type => "Type"
      )
    ])
  end

  it "renders a list of facts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
