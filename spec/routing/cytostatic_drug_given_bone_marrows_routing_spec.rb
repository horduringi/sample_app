require "spec_helper"

describe CytostaticDrugGivenBoneMarrowsController do
  describe "routing" do

    it "routes to #index" do
      get("/cytostatic_drug_given_bone_marrows").should route_to("cytostatic_drug_given_bone_marrows#index")
    end

    it "routes to #new" do
      get("/cytostatic_drug_given_bone_marrows/new").should route_to("cytostatic_drug_given_bone_marrows#new")
    end

    it "routes to #show" do
      get("/cytostatic_drug_given_bone_marrows/1").should route_to("cytostatic_drug_given_bone_marrows#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cytostatic_drug_given_bone_marrows/1/edit").should route_to("cytostatic_drug_given_bone_marrows#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cytostatic_drug_given_bone_marrows").should route_to("cytostatic_drug_given_bone_marrows#create")
    end

    it "routes to #update" do
      put("/cytostatic_drug_given_bone_marrows/1").should route_to("cytostatic_drug_given_bone_marrows#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cytostatic_drug_given_bone_marrows/1").should route_to("cytostatic_drug_given_bone_marrows#destroy", :id => "1")
    end

  end
end
