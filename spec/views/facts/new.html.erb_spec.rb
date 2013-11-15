require 'spec_helper'

describe "facts/new.html.erb" do
  before(:each) do
    assign(:fact, stub_model(Fact,
      :match_id => 1,
      :type => ""
    ).as_new_record)
  end

  it "renders new fact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => facts_path, :method => "post" do
      assert_select "input#fact_match_id", :name => "fact[match_id]"
      assert_select "input#fact_type", :name => "fact[type]"
    end
  end
end
