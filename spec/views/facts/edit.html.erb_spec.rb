require 'spec_helper'

describe "facts/edit.html.erb" do
  before(:each) do
    @fact = assign(:fact, stub_model(Fact,
      :match_id => 1,
      :type => ""
    ))
  end

  it "renders the edit fact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => facts_path(@fact), :method => "post" do
      assert_select "input#fact_match_id", :name => "fact[match_id]"
      assert_select "input#fact_type", :name => "fact[type]"
    end
  end
end
