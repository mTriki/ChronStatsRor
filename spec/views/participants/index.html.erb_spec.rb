require 'spec_helper'

describe "participants/index.html.erb" do
  before(:each) do
    assign(:participants, [
      stub_model(Participant,
        :name => "",
        :firstname => "",
        :phone => "Phone",
        :sexe => "Sexe",
        :type => "Type",
        :team => nil,
        :match => nil
      ),
      stub_model(Participant,
        :name => "",
        :firstname => "",
        :phone => "Phone",
        :sexe => "Sexe",
        :type => "Type",
        :team => nil,
        :match => nil
      )
    ])
  end

  it "renders a list of participants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sexe".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
