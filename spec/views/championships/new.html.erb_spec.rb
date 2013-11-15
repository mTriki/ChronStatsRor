require 'spec_helper'

describe "championships/new.html.erb" do
  before(:each) do
    assign(:championship, stub_model(Championship,
      :name => "MyString",
      :season_id => 1,
      :federation_id => 1
    ).as_new_record)
  end

  it "renders new championship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => championships_path, :method => "post" do
      assert_select "input#championship_name", :name => "championship[name]"
      assert_select "input#championship_season_id", :name => "championship[season_id]"
      assert_select "input#championship_federation_id", :name => "championship[federation_id]"
    end
  end
end
