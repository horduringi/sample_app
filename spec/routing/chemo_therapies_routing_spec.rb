require "spec_helper"

describe ChemoTherapiesController do
  describe "routing" do

    it "routes to #index" do
      get("/chemo_therapies").should route_to("chemo_therapies#index")
    end

    it "routes to #new" do
      get("/chemo_therapies/new").should route_to("chemo_therapies#new")
    end

    it "routes to #show" do
      get("/chemo_therapies/1").should route_to("chemo_therapies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chemo_therapies/1/edit").should route_to("chemo_therapies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chemo_therapies").should route_to("chemo_therapies#create")
    end

    it "routes to #update" do
      put("/chemo_therapies/1").should route_to("chemo_therapies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chemo_therapies/1").should route_to("chemo_therapies#destroy", :id => "1")
    end

  end
end
