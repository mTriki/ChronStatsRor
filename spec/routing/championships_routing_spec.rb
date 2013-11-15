require "spec_helper"

describe ChampionshipsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/championships" }.should route_to(:controller => "championships", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/championships/new" }.should route_to(:controller => "championships", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/championships/1" }.should route_to(:controller => "championships", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/championships/1/edit" }.should route_to(:controller => "championships", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/championships" }.should route_to(:controller => "championships", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/championships/1" }.should route_to(:controller => "championships", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/championships/1" }.should route_to(:controller => "championships", :action => "destroy", :id => "1")
    end

  end
end
