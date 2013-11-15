require 'spec_helper'

describe "clubs/edit.html.erb" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :name => "MyString",
      :adress => "MyString",
      :zip => 1,
      :city => "MyString"
    ))
  end

  it "renders the edit club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clubs_path(@club), :method => "post" do
      assert_select "input#club_name", :name => "club[name]"
      assert_select "input#club_adress", :name => "club[adress]"
      assert_select "input#club_zip", :name => "club[zip]"
      assert_select "input#club_city", :name => "club[city]"
    end
  end
end
