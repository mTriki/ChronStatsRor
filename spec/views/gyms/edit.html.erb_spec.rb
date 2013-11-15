require 'spec_helper'

describe "gyms/edit.html.erb" do
  before(:each) do
    @gym = assign(:gym, stub_model(Gym,
      :name => "MyString",
      :adress => "MyString",
      :zip => 1,
      :city => 1,
      :federation_id => 1
    ))
  end

  it "renders the edit gym form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gyms_path(@gym), :method => "post" do
      assert_select "input#gym_name", :name => "gym[name]"
      assert_select "input#gym_adress", :name => "gym[adress]"
      assert_select "input#gym_zip", :name => "gym[zip]"
      assert_select "input#gym_city", :name => "gym[city]"
      assert_select "input#gym_federation_id", :name => "gym[federation_id]"
    end
  end
end
