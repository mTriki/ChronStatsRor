require 'spec_helper'

describe "clubs/index.html.erb" do
  before(:each) do
    assign(:clubs, [
      stub_model(Club,
        :name => "Name",
        :adress => "Adress",
        :zip => 1,
        :city => "City"
      ),
      stub_model(Club,
        :name => "Name",
        :adress => "Adress",
        :zip => 1,
        :city => "City"
      )
    ])
  end

  it "renders a list of clubs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Adress".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
