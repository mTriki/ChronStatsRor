require 'spec_helper'

describe "matches/index.html.erb" do
  before(:each) do
    assign(:matches, [
      stub_model(Match,
        :home_score => 1,
        :host_score => 1,
        :championship_id => 1,
        :gym_id => 1,
        :team1_id => 1,
        :team2_id => 1
      ),
      stub_model(Match,
        :home_score => 1,
        :host_score => 1,
        :championship_id => 1,
        :gym_id => 1,
        :team1_id => 1,
        :team2_id => 1
      )
    ])
  end

  it "renders a list of matches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
