require 'spec_helper'

describe "championships/show.html.erb" do
  before(:each) do
    @championship = assign(:championship, stub_model(Championship,
      :name => "Name",
      :season_id => 1,
      :federation_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
