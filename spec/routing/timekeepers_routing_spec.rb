require "spec_helper"

describe TimekeepersController do
  describe "routing" do

    it "routes to #index" do
      get("/timekeepers").should route_to("timekeepers#index")
    end

    it "routes to #new" do
      get("/timekeepers/new").should route_to("timekeepers#new")
    end

    it "routes to #show" do
      get("/timekeepers/1").should route_to("timekeepers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/timekeepers/1/edit").should route_to("timekeepers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/timekeepers").should route_to("timekeepers#create")
    end

    it "routes to #update" do
      put("/timekeepers/1").should route_to("timekeepers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/timekeepers/1").should route_to("timekeepers#destroy", :id => "1")
    end

  end
end
