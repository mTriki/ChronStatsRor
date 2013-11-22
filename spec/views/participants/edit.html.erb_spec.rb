require 'spec_helper'

describe "participants/edit.html.erb" do
  before(:each) do
    @participant = assign(:participant, stub_model(Participant,
      :name => "",
      :firstname => "",
      :phone => "MyString",
      :sexe => "MyString",
      :type => "",
      :team => nil,
      :match => nil
    ))
  end

  it "renders the edit participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => participants_path(@participant), :method => "post" do
      assert_select "input#participant_name", :name => "participant[name]"
      assert_select "input#participant_firstname", :name => "participant[firstname]"
      assert_select "input#participant_phone", :name => "participant[phone]"
      assert_select "input#participant_sexe", :name => "participant[sexe]"
      assert_select "input#participant_type", :name => "participant[type]"
      assert_select "input#participant_team", :name => "participant[team]"
      assert_select "input#participant_match", :name => "participant[match]"
    end
  end
end
