require 'spec_helper'

describe "clubs/new.html.erb" do
  before(:each) do
    assign(:club, stub_model(Club,
      :name => "MyString",
      :adress => "MyString",
      :zip => 1,
      :city => "MyString"
    ).as_new_record)
  end

  it "renders new club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clubs_path, :method => "post" do
      assert_select "input#club_name", :name => "club[name]"
      assert_select "input#club_adress", :name => "club[adress]"
      assert_select "input#club_zip", :name => "club[zip]"
      assert_select "input#club_city", :name => "club[city]"
    end
  end
end
