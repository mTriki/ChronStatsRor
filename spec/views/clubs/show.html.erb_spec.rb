require 'spec_helper'

describe "clubs/show.html.erb" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :name => "Name",
      :adress => "Adress",
      :zip => 1,
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Adress/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
  end
end
