require 'spec_helper'

describe "patients/new" do
  before(:each) do
    assign(:patient, stub_model(Patient,
      :user => nil,
      :country => 1,
      :gender => nil,
      :comments => "MyString",
      :missinginfochemo => 1,
      :missinginforadio => 1,
      :missinginforadio => 1,
      :missinginfosurgery => 1,
      :chronicdisease => 1,
      :chronicdiseasespec => "MyString",
      :chromosomaldisorder => 1,
      :chromosomaldisorderspec => "MyString",
      :immunedeficiency => 1,
      :congenitalanomaly => 1,
      :neurofibromatosis => 1,
      :otherfamilialcancersyndspec => "MyString",
      :cancerinfamily => 1,
      :cancerinfamilyspec => "MyString",
      :prevsurgicalprocedures => 1,
      :prevsurgicalproceduresspec => "MyString",
      :prevradtherapy => 1,
      :prevradtherapy => "MyString",
      :firstprimcancerdiagnosis => "MyString",
      :firstprimcancertype => 1,
      :leukemiasubtype => 1,
      :hodgkinlymphomasubtype => 1,
      :nonhodgkinlymphomasubtype => 1,
      :cnstumorhistologicaltype => 1,
      :cnstumorprimarytumorsite => 1,
      :cnstumorprimarytumorsiteotherspec => "MyString",
      :cnstumorlaterality => 1,
      :neuroblastomaprimarytumorsite => 1,
      :neuroblastomalaterality => 1,
      :neuroblastomametastasisatdiagnosis => 1,
      :renaltumortype => 1,
      :renaltumortypeotherspec => "MyString",
      :renaltumorlaterality => 1,
      :renaltumormetastasisatdiagnosis => 1,
      :malignantbonetumortype => 1,
      :malignantbonetumorlaterality => 1,
      :malignantbonetumormetastasisatdiagnosis => 1,
      :malignantbonetumorprimarytumorsite => 1,
      :malignantbonetumorprimarytumorsiteotherspec => "MyString",
      :softtissuesarcomastumortype => 1,
      :softtissuesarcomastumortypeotherspec => "MyString",
      :softtissuesarcomaslaterality => 1,
      :softtissuesarcomasprimarytumorsite => 1,
      :softtissuesarcomasprimarytumorsiteotherspec => "MyString",
      :softtissuesarcomasmetastasisatdiagnosis => 1,
      :retinoblastomalaterality => 1,
      :hepatictumortype => 1,
      :carcinomastumortype => 1,
      :carcinomastumortypeotherspec => "MyString",
      :carcinomaslaterality => 1,
      :carcinomasmetastasisatdiagnosis => 1,
      :germcelltumorsandgonadalstumorstype => 1,
      :germcelltumorsandgonadalstumorslaterality => 1,
      :germcelltumorsandgonadalstumorsmetastasisatdiagnosis => 1,
      :othertumortype => 1,
      :othertumortypeotherspec => "MyString",
      :otherprimarytumorsite => 1,
      :otherprimarytumorsiteotherspec => "MyString",
      :remissionstatus => 1,
      :lastdoctorsvisitstatus => 1,
      :permanentcomplicationsspec => "MyString"
    ).as_new_record)
  end

  it "renders new patient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patients_path, :method => "post" do
      assert_select "input#patient_user", :name => "patient[user]"
      assert_select "input#patient_country", :name => "patient[country]"
      assert_select "input#patient_gender", :name => "patient[gender]"
      assert_select "input#patient_comments", :name => "patient[comments]"
      assert_select "input#patient_missinginfochemo", :name => "patient[missinginfochemo]"
      assert_select "input#patient_missinginforadio", :name => "patient[missinginforadio]"
      assert_select "input#patient_missinginforadio", :name => "patient[missinginforadio]"
      assert_select "input#patient_missinginfosurgery", :name => "patient[missinginfosurgery]"
      assert_select "input#patient_chronicdisease", :name => "patient[chronicdisease]"
      assert_select "input#patient_chronicdiseasespec", :name => "patient[chronicdiseasespec]"
      assert_select "input#patient_chromosomaldisorder", :name => "patient[chromosomaldisorder]"
      assert_select "input#patient_chromosomaldisorderspec", :name => "patient[chromosomaldisorderspec]"
      assert_select "input#patient_immunedeficiency", :name => "patient[immunedeficiency]"
      assert_select "input#patient_congenitalanomaly", :name => "patient[congenitalanomaly]"
      assert_select "input#patient_neurofibromatosis", :name => "patient[neurofibromatosis]"
      assert_select "input#patient_otherfamilialcancersyndspec", :name => "patient[otherfamilialcancersyndspec]"
      assert_select "input#patient_cancerinfamily", :name => "patient[cancerinfamily]"
      assert_select "input#patient_cancerinfamilyspec", :name => "patient[cancerinfamilyspec]"
      assert_select "input#patient_prevsurgicalprocedures", :name => "patient[prevsurgicalprocedures]"
      assert_select "input#patient_prevsurgicalproceduresspec", :name => "patient[prevsurgicalproceduresspec]"
      assert_select "input#patient_prevradtherapy", :name => "patient[prevradtherapy]"
      assert_select "input#patient_prevradtherapy", :name => "patient[prevradtherapy]"
      assert_select "input#patient_firstprimcancerdiagnosis", :name => "patient[firstprimcancerdiagnosis]"
      assert_select "input#patient_firstprimcancertype", :name => "patient[firstprimcancertype]"
      assert_select "input#patient_leukemiasubtype", :name => "patient[leukemiasubtype]"
      assert_select "input#patient_hodgkinlymphomasubtype", :name => "patient[hodgkinlymphomasubtype]"
      assert_select "input#patient_nonhodgkinlymphomasubtype", :name => "patient[nonhodgkinlymphomasubtype]"
      assert_select "input#patient_cnstumorhistologicaltype", :name => "patient[cnstumorhistologicaltype]"
      assert_select "input#patient_cnstumorprimarytumorsite", :name => "patient[cnstumorprimarytumorsite]"
      assert_select "input#patient_cnstumorprimarytumorsiteotherspec", :name => "patient[cnstumorprimarytumorsiteotherspec]"
      assert_select "input#patient_cnstumorlaterality", :name => "patient[cnstumorlaterality]"
      assert_select "input#patient_neuroblastomaprimarytumorsite", :name => "patient[neuroblastomaprimarytumorsite]"
      assert_select "input#patient_neuroblastomalaterality", :name => "patient[neuroblastomalaterality]"
      assert_select "input#patient_neuroblastomametastasisatdiagnosis", :name => "patient[neuroblastomametastasisatdiagnosis]"
      assert_select "input#patient_renaltumortype", :name => "patient[renaltumortype]"
      assert_select "input#patient_renaltumortypeotherspec", :name => "patient[renaltumortypeotherspec]"
      assert_select "input#patient_renaltumorlaterality", :name => "patient[renaltumorlaterality]"
      assert_select "input#patient_renaltumormetastasisatdiagnosis", :name => "patient[renaltumormetastasisatdiagnosis]"
      assert_select "input#patient_malignantbonetumortype", :name => "patient[malignantbonetumortype]"
      assert_select "input#patient_malignantbonetumorlaterality", :name => "patient[malignantbonetumorlaterality]"
      assert_select "input#patient_malignantbonetumormetastasisatdiagnosis", :name => "patient[malignantbonetumormetastasisatdiagnosis]"
      assert_select "input#patient_malignantbonetumorprimarytumorsite", :name => "patient[malignantbonetumorprimarytumorsite]"
      assert_select "input#patient_malignantbonetumorprimarytumorsiteotherspec", :name => "patient[malignantbonetumorprimarytumorsiteotherspec]"
      assert_select "input#patient_softtissuesarcomastumortype", :name => "patient[softtissuesarcomastumortype]"
      assert_select "input#patient_softtissuesarcomastumortypeotherspec", :name => "patient[softtissuesarcomastumortypeotherspec]"
      assert_select "input#patient_softtissuesarcomaslaterality", :name => "patient[softtissuesarcomaslaterality]"
      assert_select "input#patient_softtissuesarcomasprimarytumorsite", :name => "patient[softtissuesarcomasprimarytumorsite]"
      assert_select "input#patient_softtissuesarcomasprimarytumorsiteotherspec", :name => "patient[softtissuesarcomasprimarytumorsiteotherspec]"
      assert_select "input#patient_softtissuesarcomasmetastasisatdiagnosis", :name => "patient[softtissuesarcomasmetastasisatdiagnosis]"
      assert_select "input#patient_retinoblastomalaterality", :name => "patient[retinoblastomalaterality]"
      assert_select "input#patient_hepatictumortype", :name => "patient[hepatictumortype]"
      assert_select "input#patient_carcinomastumortype", :name => "patient[carcinomastumortype]"
      assert_select "input#patient_carcinomastumortypeotherspec", :name => "patient[carcinomastumortypeotherspec]"
      assert_select "input#patient_carcinomaslaterality", :name => "patient[carcinomaslaterality]"
      assert_select "input#patient_carcinomasmetastasisatdiagnosis", :name => "patient[carcinomasmetastasisatdiagnosis]"
      assert_select "input#patient_germcelltumorsandgonadalstumorstype", :name => "patient[germcelltumorsandgonadalstumorstype]"
      assert_select "input#patient_germcelltumorsandgonadalstumorslaterality", :name => "patient[germcelltumorsandgonadalstumorslaterality]"
      assert_select "input#patient_germcelltumorsandgonadalstumorsmetastasisatdiagnosis", :name => "patient[germcelltumorsandgonadalstumorsmetastasisatdiagnosis]"
      assert_select "input#patient_othertumortype", :name => "patient[othertumortype]"
      assert_select "input#patient_othertumortypeotherspec", :name => "patient[othertumortypeotherspec]"
      assert_select "input#patient_otherprimarytumorsite", :name => "patient[otherprimarytumorsite]"
      assert_select "input#patient_otherprimarytumorsiteotherspec", :name => "patient[otherprimarytumorsiteotherspec]"
      assert_select "input#patient_remissionstatus", :name => "patient[remissionstatus]"
      assert_select "input#patient_lastdoctorsvisitstatus", :name => "patient[lastdoctorsvisitstatus]"
      assert_select "input#patient_permanentcomplicationsspec", :name => "patient[permanentcomplicationsspec]"
    end
  end
end
