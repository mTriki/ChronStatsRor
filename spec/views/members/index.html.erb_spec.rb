require 'spec_helper'

describe "members/index.html.erb" do
  before(:each) do
    assign(:members, [
      stub_model(Member,
        :name => "Name",
        :firstname => "Firstname",
        :login => "Login",
        :phone => "Phone",
        :email => "Email",
        :password => "Password",
        :federation_id => 1
      ),
      stub_model(Member,
        :name => "Name",
        :firstname => "Firstname",
        :login => "Login",
        :phone => "Phone",
        :email => "Email",
        :password => "Password",
        :federation_id => 1
      )
    ])
  end

  it "renders a list of members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
