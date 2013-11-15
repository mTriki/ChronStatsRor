require 'spec_helper'

describe "members/new.html.erb" do
  before(:each) do
    assign(:member, stub_model(Member,
      :name => "MyString",
      :firstname => "MyString",
      :login => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :password => "MyString",
      :federation_id => 1
    ).as_new_record)
  end

  it "renders new member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => members_path, :method => "post" do
      assert_select "input#member_name", :name => "member[name]"
      assert_select "input#member_firstname", :name => "member[firstname]"
      assert_select "input#member_login", :name => "member[login]"
      assert_select "input#member_phone", :name => "member[phone]"
      assert_select "input#member_email", :name => "member[email]"
      assert_select "input#member_password", :name => "member[password]"
      assert_select "input#member_federation_id", :name => "member[federation_id]"
    end
  end
end
