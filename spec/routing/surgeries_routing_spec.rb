require "spec_helper"

describe SurgeriesController do
  describe "routing" do

    it "routes to #index" do
      get("/surgeries").should route_to("surgeries#index")
    end

    it "routes to #new" do
      get("/surgeries/new").should route_to("surgeries#new")
    end

    it "routes to #show" do
      get("/surgeries/1").should route_to("surgeries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/surgeries/1/edit").should route_to("surgeries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/surgeries").should route_to("surgeries#create")
    end

    it "routes to #update" do
      put("/surgeries/1").should route_to("surgeries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/surgeries/1").should route_to("surgeries#destroy", :id => "1")
    end

  end
end
