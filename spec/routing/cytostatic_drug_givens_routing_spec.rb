require "spec_helper"

describe CytostaticDrugGivensController do
  describe "routing" do

    it "routes to #index" do
      get("/cytostatic_drug_givens").should route_to("cytostatic_drug_givens#index")
    end

    it "routes to #new" do
      get("/cytostatic_drug_givens/new").should route_to("cytostatic_drug_givens#new")
    end

    it "routes to #show" do
      get("/cytostatic_drug_givens/1").should route_to("cytostatic_drug_givens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cytostatic_drug_givens/1/edit").should route_to("cytostatic_drug_givens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cytostatic_drug_givens").should route_to("cytostatic_drug_givens#create")
    end

    it "routes to #update" do
      put("/cytostatic_drug_givens/1").should route_to("cytostatic_drug_givens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cytostatic_drug_givens/1").should route_to("cytostatic_drug_givens#destroy", :id => "1")
    end

  end
end
