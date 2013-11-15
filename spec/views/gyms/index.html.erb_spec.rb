require 'spec_helper'

describe "gyms/index.html.erb" do
  before(:each) do
    assign(:gyms, [
      stub_model(Gym,
        :name => "Name",
        :adress => "Adress",
        :zip => 1,
        :city => 1,
        :federation_id => 1
      ),
      stub_model(Gym,
        :name => "Name",
        :adress => "Adress",
        :zip => 1,
        :city => 1,
        :federation_id => 1
      )
    ])
  end

  it "renders a list of gyms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Adress".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
