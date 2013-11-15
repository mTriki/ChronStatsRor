require "spec_helper"

describe GymsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/gyms" }.should route_to(:controller => "gyms", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/gyms/new" }.should route_to(:controller => "gyms", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/gyms/1" }.should route_to(:controller => "gyms", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/gyms/1/edit" }.should route_to(:controller => "gyms", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/gyms" }.should route_to(:controller => "gyms", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/gyms/1" }.should route_to(:controller => "gyms", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/gyms/1" }.should route_to(:controller => "gyms", :action => "destroy", :id => "1")
    end

  end
end
