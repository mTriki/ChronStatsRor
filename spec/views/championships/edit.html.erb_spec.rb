require 'spec_helper'

describe "championships/edit.html.erb" do
  before(:each) do
    @championship = assign(:championship, stub_model(Championship,
      :name => "MyString",
      :season_id => 1,
      :federation_id => 1
    ))
  end

  it "renders the edit championship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => championships_path(@championship), :method => "post" do
      assert_select "input#championship_name", :name => "championship[name]"
      assert_select "input#championship_season_id", :name => "championship[season_id]"
      assert_select "input#championship_federation_id", :name => "championship[federation_id]"
    end
  end
end
