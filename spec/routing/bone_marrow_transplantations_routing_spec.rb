require "spec_helper"

describe BoneMarrowTransplantationsController do
  describe "routing" do

    it "routes to #index" do
      get("/bone_marrow_transplantations").should route_to("bone_marrow_transplantations#index")
    end

    it "routes to #new" do
      get("/bone_marrow_transplantations/new").should route_to("bone_marrow_transplantations#new")
    end

    it "routes to #show" do
      get("/bone_marrow_transplantations/1").should route_to("bone_marrow_transplantations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bone_marrow_transplantations/1/edit").should route_to("bone_marrow_transplantations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bone_marrow_transplantations").should route_to("bone_marrow_transplantations#create")
    end

    it "routes to #update" do
      put("/bone_marrow_transplantations/1").should route_to("bone_marrow_transplantations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bone_marrow_transplantations/1").should route_to("bone_marrow_transplantations#destroy", :id => "1")
    end

  end
end
