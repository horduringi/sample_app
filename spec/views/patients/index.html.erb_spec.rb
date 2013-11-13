require 'spec_helper'

describe "patients/index" do
  before(:each) do
    assign(:patients, [
      stub_model(Patient,
        :user => nil,
        :country => 1,
        :gender => nil,
        :comments => "Comments",
        :missinginfochemo => 2,
        :missinginforadio => 3,
        :missinginforadio => 4,
        :missinginfosurgery => 5,
        :chronicdisease => 6,
        :chronicdiseasespec => "Chronicdiseasespec",
        :chromosomaldisorder => 7,
        :chromosomaldisorderspec => "Chromosomaldisorderspec",
        :immunedeficiency => 8,
        :congenitalanomaly => 9,
        :neurofibromatosis => 10,
        :otherfamilialcancersyndspec => "Otherfamilialcancersyndspec",
        :cancerinfamily => 11,
        :cancerinfamilyspec => "Cancerinfamilyspec",
        :prevsurgicalprocedures => 12,
        :prevsurgicalproceduresspec => "Prevsurgicalproceduresspec",
        :prevradtherapy => 13,
        :prevradtherapy => "Prevradtherapy",
        :firstprimcancerdiagnosis => "Firstprimcancerdiagnosis",
        :firstprimcancertype => 14,
        :leukemiasubtype => 15,
        :hodgkinlymphomasubtype => 16,
        :nonhodgkinlymphomasubtype => 17,
        :cnstumorhistologicaltype => 18,
        :cnstumorprimarytumorsite => 19,
        :cnstumorprimarytumorsiteotherspec => "Cnstumorprimarytumorsiteotherspec",
        :cnstumorlaterality => 20,
        :neuroblastomaprimarytumorsite => 21,
        :neuroblastomalaterality => 22,
        :neuroblastomametastasisatdiagnosis => 23,
        :renaltumortype => 24,
        :renaltumortypeotherspec => "Renaltumortypeotherspec",
        :renaltumorlaterality => 25,
        :renaltumormetastasisatdiagnosis => 26,
        :malignantbonetumortype => 27,
        :malignantbonetumorlaterality => 28,
        :malignantbonetumormetastasisatdiagnosis => 29,
        :malignantbonetumorprimarytumorsite => 30,
        :malignantbonetumorprimarytumorsiteotherspec => "Malignantbonetumorprimarytumorsiteotherspec",
        :softtissuesarcomastumortype => 31,
        :softtissuesarcomastumortypeotherspec => "Softtissuesarcomastumortypeotherspec",
        :softtissuesarcomaslaterality => 32,
        :softtissuesarcomasprimarytumorsite => 33,
        :softtissuesarcomasprimarytumorsiteotherspec => "Softtissuesarcomasprimarytumorsiteotherspec",
        :softtissuesarcomasmetastasisatdiagnosis => 34,
        :retinoblastomalaterality => 35,
        :hepatictumortype => 36,
        :carcinomastumortype => 37,
        :carcinomastumortypeotherspec => "Carcinomastumortypeotherspec",
        :carcinomaslaterality => 38,
        :carcinomasmetastasisatdiagnosis => 39,
        :germcelltumorsandgonadalstumorstype => 40,
        :germcelltumorsandgonadalstumorslaterality => 41,
        :germcelltumorsandgonadalstumorsmetastasisatdiagnosis => 42,
        :othertumortype => 43,
        :othertumortypeotherspec => "Othertumortypeotherspec",
        :otherprimarytumorsite => 44,
        :otherprimarytumorsiteotherspec => "Otherprimarytumorsiteotherspec",
        :remissionstatus => 45,
        :lastdoctorsvisitstatus => 46,
        :permanentcomplicationsspec => "Permanentcomplicationsspec"
      ),
      stub_model(Patient,
        :user => nil,
        :country => 1,
        :gender => nil,
        :comments => "Comments",
        :missinginfochemo => 2,
        :missinginforadio => 3,
        :missinginforadio => 4,
        :missinginfosurgery => 5,
        :chronicdisease => 6,
        :chronicdiseasespec => "Chronicdiseasespec",
        :chromosomaldisorder => 7,
        :chromosomaldisorderspec => "Chromosomaldisorderspec",
        :immunedeficiency => 8,
        :congenitalanomaly => 9,
        :neurofibromatosis => 10,
        :otherfamilialcancersyndspec => "Otherfamilialcancersyndspec",
        :cancerinfamily => 11,
        :cancerinfamilyspec => "Cancerinfamilyspec",
        :prevsurgicalprocedures => 12,
        :prevsurgicalproceduresspec => "Prevsurgicalproceduresspec",
        :prevradtherapy => 13,
        :prevradtherapy => "Prevradtherapy",
        :firstprimcancerdiagnosis => "Firstprimcancerdiagnosis",
        :firstprimcancertype => 14,
        :leukemiasubtype => 15,
        :hodgkinlymphomasubtype => 16,
        :nonhodgkinlymphomasubtype => 17,
        :cnstumorhistologicaltype => 18,
        :cnstumorprimarytumorsite => 19,
        :cnstumorprimarytumorsiteotherspec => "Cnstumorprimarytumorsiteotherspec",
        :cnstumorlaterality => 20,
        :neuroblastomaprimarytumorsite => 21,
        :neuroblastomalaterality => 22,
        :neuroblastomametastasisatdiagnosis => 23,
        :renaltumortype => 24,
        :renaltumortypeotherspec => "Renaltumortypeotherspec",
        :renaltumorlaterality => 25,
        :renaltumormetastasisatdiagnosis => 26,
        :malignantbonetumortype => 27,
        :malignantbonetumorlaterality => 28,
        :malignantbonetumormetastasisatdiagnosis => 29,
        :malignantbonetumorprimarytumorsite => 30,
        :malignantbonetumorprimarytumorsiteotherspec => "Malignantbonetumorprimarytumorsiteotherspec",
        :softtissuesarcomastumortype => 31,
        :softtissuesarcomastumortypeotherspec => "Softtissuesarcomastumortypeotherspec",
        :softtissuesarcomaslaterality => 32,
        :softtissuesarcomasprimarytumorsite => 33,
        :softtissuesarcomasprimarytumorsiteotherspec => "Softtissuesarcomasprimarytumorsiteotherspec",
        :softtissuesarcomasmetastasisatdiagnosis => 34,
        :retinoblastomalaterality => 35,
        :hepatictumortype => 36,
        :carcinomastumortype => 37,
        :carcinomastumortypeotherspec => "Carcinomastumortypeotherspec",
        :carcinomaslaterality => 38,
        :carcinomasmetastasisatdiagnosis => 39,
        :germcelltumorsandgonadalstumorstype => 40,
        :germcelltumorsandgonadalstumorslaterality => 41,
        :germcelltumorsandgonadalstumorsmetastasisatdiagnosis => 42,
        :othertumortype => 43,
        :othertumortypeotherspec => "Othertumortypeotherspec",
        :otherprimarytumorsite => 44,
        :otherprimarytumorsiteotherspec => "Otherprimarytumorsiteotherspec",
        :remissionstatus => 45,
        :lastdoctorsvisitstatus => 46,
        :permanentcomplicationsspec => "Permanentcomplicationsspec"
      )
    ])
  end

  it "renders a list of patients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Chronicdiseasespec".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Chromosomaldisorderspec".to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => "Otherfamilialcancersyndspec".to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => "Cancerinfamilyspec".to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => "Prevsurgicalproceduresspec".to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => "Prevradtherapy".to_s, :count => 2
    assert_select "tr>td", :text => "Firstprimcancerdiagnosis".to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
    assert_select "tr>td", :text => 16.to_s, :count => 2
    assert_select "tr>td", :text => 17.to_s, :count => 2
    assert_select "tr>td", :text => 18.to_s, :count => 2
    assert_select "tr>td", :text => 19.to_s, :count => 2
    assert_select "tr>td", :text => "Cnstumorprimarytumorsiteotherspec".to_s, :count => 2
    assert_select "tr>td", :text => 20.to_s, :count => 2
    assert_select "tr>td", :text => 21.to_s, :count => 2
    assert_select "tr>td", :text => 22.to_s, :count => 2
    assert_select "tr>td", :text => 23.to_s, :count => 2
    assert_select "tr>td", :text => 24.to_s, :count => 2
    assert_select "tr>td", :text => "Renaltumortypeotherspec".to_s, :count => 2
    assert_select "tr>td", :text => 25.to_s, :count => 2
    assert_select "tr>td", :text => 26.to_s, :count => 2
    assert_select "tr>td", :text => 27.to_s, :count => 2
    assert_select "tr>td", :text => 28.to_s, :count => 2
    assert_select "tr>td", :text => 29.to_s, :count => 2
    assert_select "tr>td", :text => 30.to_s, :count => 2
    assert_select "tr>td", :text => "Malignantbonetumorprimarytumorsiteotherspec".to_s, :count => 2
    assert_select "tr>td", :text => 31.to_s, :count => 2
    assert_select "tr>td", :text => "Softtissuesarcomastumortypeotherspec".to_s, :count => 2
    assert_select "tr>td", :text => 32.to_s, :count => 2
    assert_select "tr>td", :text => 33.to_s, :count => 2
    assert_select "tr>td", :text => "Softtissuesarcomasprimarytumorsiteotherspec".to_s, :count => 2
    assert_select "tr>td", :text => 34.to_s, :count => 2
    assert_select "tr>td", :text => 35.to_s, :count => 2
    assert_select "tr>td", :text => 36.to_s, :count => 2
    assert_select "tr>td", :text => 37.to_s, :count => 2
    assert_select "tr>td", :text => "Carcinomastumortypeotherspec".to_s, :count => 2
    assert_select "tr>td", :text => 38.to_s, :count => 2
    assert_select "tr>td", :text => 39.to_s, :count => 2
    assert_select "tr>td", :text => 40.to_s, :count => 2
    assert_select "tr>td", :text => 41.to_s, :count => 2
    assert_select "tr>td", :text => 42.to_s, :count => 2
    assert_select "tr>td", :text => 43.to_s, :count => 2
    assert_select "tr>td", :text => "Othertumortypeotherspec".to_s, :count => 2
    assert_select "tr>td", :text => 44.to_s, :count => 2
    assert_select "tr>td", :text => "Otherprimarytumorsiteotherspec".to_s, :count => 2
    assert_select "tr>td", :text => 45.to_s, :count => 2
    assert_select "tr>td", :text => 46.to_s, :count => 2
    assert_select "tr>td", :text => "Permanentcomplicationsspec".to_s, :count => 2
  end
end
