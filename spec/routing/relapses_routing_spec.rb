require "spec_helper"

describe RelapsesController do
  describe "routing" do

    it "routes to #index" do
      get("/relapses").should route_to("relapses#index")
    end

    it "routes to #new" do
      get("/relapses/new").should route_to("relapses#new")
    end

    it "routes to #show" do
      get("/relapses/1").should route_to("relapses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/relapses/1/edit").should route_to("relapses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/relapses").should route_to("relapses#create")
    end

    it "routes to #update" do
      put("/relapses/1").should route_to("relapses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/relapses/1").should route_to("relapses#destroy", :id => "1")
    end

  end
end
