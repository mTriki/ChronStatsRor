require 'spec_helper'

describe "teams/index.html.erb" do
  before(:each) do
    assign(:teams, [
      stub_model(Team,
        :name => "Name",
        :home_color => "Home Color",
        :away_color => "Away Color"
      ),
      stub_model(Team,
        :name => "Name",
        :home_color => "Home Color",
        :away_color => "Away Color"
      )
    ])
  end

  it "renders a list of teams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Home Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Away Color".to_s, :count => 2
  end
end
