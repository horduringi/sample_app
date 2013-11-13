require 'spec_helper'

describe "patients/show" do
  before(:each) do
    @patient = assign(:patient, stub_model(Patient,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(/Comments/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/Chronicdiseasespec/)
    rendered.should match(/7/)
    rendered.should match(/Chromosomaldisorderspec/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
    rendered.should match(/Otherfamilialcancersyndspec/)
    rendered.should match(/11/)
    rendered.should match(/Cancerinfamilyspec/)
    rendered.should match(/12/)
    rendered.should match(/Prevsurgicalproceduresspec/)
    rendered.should match(/13/)
    rendered.should match(/Prevradtherapy/)
    rendered.should match(/Firstprimcancerdiagnosis/)
    rendered.should match(/14/)
    rendered.should match(/15/)
    rendered.should match(/16/)
    rendered.should match(/17/)
    rendered.should match(/18/)
    rendered.should match(/19/)
    rendered.should match(/Cnstumorprimarytumorsiteotherspec/)
    rendered.should match(/20/)
    rendered.should match(/21/)
    rendered.should match(/22/)
    rendered.should match(/23/)
    rendered.should match(/24/)
    rendered.should match(/Renaltumortypeotherspec/)
    rendered.should match(/25/)
    rendered.should match(/26/)
    rendered.should match(/27/)
    rendered.should match(/28/)
    rendered.should match(/29/)
    rendered.should match(/30/)
    rendered.should match(/Malignantbonetumorprimarytumorsiteotherspec/)
    rendered.should match(/31/)
    rendered.should match(/Softtissuesarcomastumortypeotherspec/)
    rendered.should match(/32/)
    rendered.should match(/33/)
    rendered.should match(/Softtissuesarcomasprimarytumorsiteotherspec/)
    rendered.should match(/34/)
    rendered.should match(/35/)
    rendered.should match(/36/)
    rendered.should match(/37/)
    rendered.should match(/Carcinomastumortypeotherspec/)
    rendered.should match(/38/)
    rendered.should match(/39/)
    rendered.should match(/40/)
    rendered.should match(/41/)
    rendered.should match(/42/)
    rendered.should match(/43/)
    rendered.should match(/Othertumortypeotherspec/)
    rendered.should match(/44/)
    rendered.should match(/Otherprimarytumorsiteotherspec/)
    rendered.should match(/45/)
    rendered.should match(/46/)
    rendered.should match(/Permanentcomplicationsspec/)
  end
end
