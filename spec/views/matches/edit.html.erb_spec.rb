require 'spec_helper'

describe "matches/edit.html.erb" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :home_score => 1,
      :host_score => 1,
      :championship_id => 1,
      :gym_id => 1,
      :team1_id => 1,
      :team2_id => 1
    ))
  end

  it "renders the edit match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => matches_path(@match), :method => "post" do
      assert_select "input#match_home_score", :name => "match[home_score]"
      assert_select "input#match_host_score", :name => "match[host_score]"
      assert_select "input#match_championship_id", :name => "match[championship_id]"
      assert_select "input#match_gym_id", :name => "match[gym_id]"
      assert_select "input#match_team1_id", :name => "match[team1_id]"
      assert_select "input#match_team2_id", :name => "match[team2_id]"
    end
  end
end
