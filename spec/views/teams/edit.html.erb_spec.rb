require 'spec_helper'

describe "teams/edit.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :name => "MyString",
      :home_color => "MyString",
      :away_color => "MyString"
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path(@team), :method => "post" do
      assert_select "input#team_name", :name => "team[name]"
      assert_select "input#team_home_color", :name => "team[home_color]"
      assert_select "input#team_away_color", :name => "team[away_color]"
    end
  end
end
