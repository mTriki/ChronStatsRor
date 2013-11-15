require 'spec_helper'

describe "teams/show.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :name => "Name",
      :home_color => "Home Color",
      :away_color => "Away Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Home Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Away Color/)
  end
end
