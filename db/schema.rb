# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131123223918) do

  create_table "anthracyclines_bolus_infs", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "bone_marrow_transplantations", :force => true do |t|
    t.integer  "journal_id"
    t.integer  "transplantationnumber"
    t.integer  "autologous"
    t.integer  "allogeneic"
    t.integer  "donor"
    t.integer  "source"
    t.integer  "totalbodyirritation"
    t.decimal  "cumulativedose"
    t.integer  "numberoffractions"
    t.integer  "radiotherapyrecordscopied"
    t.integer  "chemotherapy"
    t.decimal  "bodysurfaceconditioning"
    t.decimal  "weightconditioning"
    t.decimal  "heightconditioning"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "treatmentprotocol"
    t.integer  "cardioprotectants"
    t.integer  "transplantationdate_day"
    t.integer  "transplantationdate_month"
    t.integer  "transplantationdate_year"
    t.integer  "startdate_day"
    t.integer  "startdate_month"
    t.integer  "startdate_year"
    t.integer  "chemotherapydateofinitiation_day"
    t.integer  "chemotherapydateofinitiation_month"
    t.integer  "chemotherapydateofinitiation_year"
    t.integer  "chemotherapydateofcompletion_day"
    t.integer  "chemotherapydateofcompletion_month"
    t.integer  "chemotherapydateofcompletion_year"
    t.integer  "completiondate_day"
    t.integer  "completiondate_month"
    t.integer  "completiondate_year"
  end

  create_table "carcinomas_tumor_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "chemo_or_bone_marrows", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chemo_therapies", :force => true do |t|
    t.integer  "journal_id"
    t.integer  "yearnumber"
    t.decimal  "bodysurface"
    t.decimal  "weight"
    t.decimal  "height"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "estimated"
    t.integer  "measurementdate_day"
    t.integer  "measurementdate_month"
    t.integer  "measurementdate_year"
  end

  create_table "chromosomal_disorders", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "chronic_diseases", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "cns_tumor_histological_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cns_tumor_primary_tumor_sites", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "countrycode"
    t.string   "countryname"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cytostatic_drug_given_bone_marrows", :force => true do |t|
    t.integer  "cytostaticdrugid"
    t.integer  "journal_id"
    t.decimal  "totalcumulateddosemg"
    t.decimal  "totalcumulateddoseunits"
    t.integer  "dosequality"
    t.integer  "anthracyclinesbolusinfnoyes"
    t.integer  "anthracyclinesbolusinf"
    t.integer  "cardioprotectants"
    t.integer  "bone_marrow_transplantation_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "chemoorbonemarrow"
  end

  create_table "cytostatic_drug_givens", :force => true do |t|
    t.integer  "cytostaticdrugid"
    t.integer  "journal_id"
    t.integer  "chemoorbonemarrow"
    t.decimal  "totalcumulateddosemg"
    t.decimal  "totalcumulateddoseunits"
    t.integer  "dosequality"
    t.integer  "anthracyclinesbolusinfnoyes"
    t.integer  "anthracyclinesbolusinf"
    t.integer  "cardioprotectants"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "bone_marrow_transplantation_id"
  end

  create_table "donors", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "dose_qualities", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "first_prim_cancer_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genders", :force => true do |t|
    t.string   "gendername"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "germ_cell_tumors_and_gonadals_tumor_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hepatic_tumor_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "hodgkin_lymphoma_sub_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "institutes", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "internal_radio_therapy_radioactive_agents", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "internal_radiotherapy_dosages", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "journals", :force => true do |t|
    t.integer  "studynumber"
    t.integer  "user_id"
    t.datetime "datetimecreate"
    t.integer  "country"
    t.integer  "gender"
    t.string   "comments"
    t.integer  "missinginfochemo"
    t.integer  "missinginforadio"
    t.integer  "missinginfosurgery"
    t.date     "radiorecordscopied"
    t.integer  "chronicdisease"
    t.string   "chronicdiseasespec"
    t.integer  "chromosomaldisorder"
    t.string   "chromosomaldisorderspec"
    t.integer  "immunedeficiency"
    t.integer  "congenitalanomaly"
    t.integer  "neurofibromatosis"
    t.integer  "otherfamilialcancersynd"
    t.string   "otherfamilialcancersyndspec"
    t.integer  "cancerinfamily"
    t.string   "cancerinfamilyspec"
    t.integer  "prevsurgicalprocedures"
    t.string   "prevsurgicalproceduresspec"
    t.integer  "prevradtherapy"
    t.string   "prevradtherapyspec"
    t.string   "firstprimcancerdiagnosis"
    t.date     "dateofdiagnosis"
    t.integer  "firstprimcancertype"
    t.integer  "leukemiasubtype"
    t.integer  "hodgkinlymphomasubtype"
    t.integer  "nonhodgkinlymphomasubtype"
    t.integer  "cnstumorhistologicaltype"
    t.integer  "cnstumorprimarytumorsite"
    t.string   "cnstumorprimarytumorsiteotherspec"
    t.integer  "cnstumorlaterality"
    t.integer  "neuroblastomaprimarytumorsite"
    t.integer  "neuroblastomalaterality"
    t.integer  "neuroblastomametastasisatdiagnosis"
    t.integer  "renaltumortype"
    t.string   "renaltumortypeotherspec"
    t.integer  "renaltumorlaterality"
    t.integer  "renaltumormetastasisatdiagnosis"
    t.integer  "malignantbonetumortype"
    t.string   "malignantbonetumotypeotherspec"
    t.integer  "malignantbonetumorlaterality"
    t.integer  "malignantbonetumormetastasisatdiagnosis"
    t.integer  "malignantbonetumorprimarytumorsite"
    t.string   "malignantbonetumorprimarytumorsiteotherspec"
    t.integer  "softtissuesarcomastumortype"
    t.string   "softtissuesarcomastumortypeotherspec"
    t.integer  "softtissuesarcomaslaterality"
    t.integer  "softtissuesarcomasprimarytumorsite"
    t.string   "softtissuesarcomasprimarytumorsiteotherspec"
    t.integer  "softtissuesarcomasmetastasisatdiagnosis"
    t.integer  "retinoblastomalaterality"
    t.integer  "hepatictumortype"
    t.integer  "carcinomastumortype"
    t.string   "carcinomastumortypeotherspec"
    t.integer  "carcinomaslaterality"
    t.integer  "carcinomasmetastasisatdiagnosis"
    t.integer  "germcelltumorsandgonadalstumorstype"
    t.integer  "germcelltumorsandgonadaltumorslaterality"
    t.integer  "germcellandgonadalstumorsmetastasisatdiagnosis"
    t.integer  "othertumortype"
    t.string   "othertumortypeotherspec"
    t.integer  "otherprimarytumorsite"
    t.string   "otherprimarytumorsiteotherspec"
    t.integer  "radiotherapy"
    t.integer  "externalbeamradiotherapy"
    t.integer  "brachytherapy"
    t.integer  "surgery"
    t.integer  "chemotherapy"
    t.integer  "chemotherapytreatmentprotocol"
    t.string   "chemotherapytreatmentprotocolspec"
    t.integer  "chemotherapyCVC"
    t.integer  "chemotherapyknownnumberofcvc"
    t.integer  "chemotherapynumberofcvc"
    t.integer  "relapse"
    t.integer  "relapseno"
    t.integer  "remissionstatus"
    t.date     "lastdoctorsvisitdate"
    t.integer  "lastdoctorsvisitstatus"
    t.string   "permanentcomplicationspec"
    t.integer  "numberofbonemarrowtransplantations"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "malignantbonetumortypeotherspec"
    t.string   "germcelltumorsandgonadalstumorstypeotherspec"
    t.string   "externalbeamradiotherapytreatinghospital"
    t.string   "brachytherapytreatinghospital"
    t.string   "internalradiotherapytreatinghospital"
    t.integer  "internalradiotherapy"
    t.integer  "bonemarrowtransplantation"
    t.integer  "chemocardioprotectants"
    t.decimal  "chemotherapybodysurfaceatdiagnosis"
    t.decimal  "chemotherapyweightatdiagnosis"
    t.decimal  "chemotherapyheightatdiagnosis"
    t.integer  "chemotherapyestimated"
    t.date     "dateofextraction"
    t.integer  "patient_id"
    t.integer  "treatment_no"
    t.integer  "relapse_date_day"
    t.integer  "relapse_date_month"
    t.integer  "relapse_date_year"
    t.integer  "externalbeamradiotherapydateofstart_day"
    t.integer  "externalbeamradiotherapydateofstart_month"
    t.integer  "externalbeamradiotherapydateofstart_year"
    t.integer  "externalbeamradiotherapydateofcompletion_day"
    t.integer  "externalbeamradiotherapydateofcompletion_month"
    t.integer  "externalbeamradiotherapydateofcompletion_year"
    t.integer  "externalbeamradiotherapyrecordscopied_day"
    t.integer  "externalbeamradiotherapyrecordscopied_month"
    t.integer  "externalbeamradiotherapyrecordscopied_year"
    t.integer  "brachytherapydateofstart_day"
    t.integer  "brachytherapydateofstart_month"
    t.integer  "brachytherapydateofstart_year"
    t.integer  "brachytherapydateofcompletion_day"
    t.integer  "brachytherapydateofcompletion_month"
    t.integer  "brachytherapydateofcompletion_year"
    t.integer  "brachytherapyrecordscopied_day"
    t.integer  "brachytherapyrecordscopied_month"
    t.integer  "brachytherapyrecordscopied_year"
    t.integer  "internalradiotherapydateofstart_day"
    t.integer  "internalradiotherapydateofstart_month"
    t.integer  "internalradiotherapydateofstart_year"
    t.integer  "internalradiotherapyrecordscopied_day"
    t.integer  "internalradiotherapyrecordscopied_month"
    t.integer  "internalradiotherapyrecordscopied_year"
    t.integer  "chemotherapydateinitiation_day"
    t.integer  "chemotherapydateinitiation_month"
    t.integer  "chemotherapydateinitiation_year"
    t.integer  "chemotherapydatecompletion_day"
    t.integer  "chemotherapydatecompletion_month"
    t.integer  "chemotherapydatecompletion_year"
    t.integer  "chemotherapyinsertiondatecvc_day"
    t.integer  "chemotherapyinsertiondatecvc_month"
    t.integer  "chemotherapyinsertiondatecvc_year"
    t.integer  "chemotherapypermanentremovaldate_day"
    t.integer  "chemotherapypermanentremovaldate_month"
    t.integer  "chemotherapypermanentremovaldate_year"
  end

  create_table "last_doctors_visit_statuses", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "laterality_rlbmns", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "laterality_rlbmus", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "laterality_rlbns", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "laterality_rlbus", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "leukemia_sub_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "malignant_bone_tumor_primary_tumor_sites", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "malignant_bone_tumor_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "missing_infos", :force => true do |t|
    t.string   "textshort"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "neuroblastoma_primary_tumor_sites", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "no_yes", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "no_yes_unknown_not_invs", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "no_yes_unknowns", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "non_hodgkin_lymphoma_sub_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "other_primary_tumor_sites", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "other_tumor_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "patients", :force => true do |t|
    t.integer  "user_id"
    t.date     "datecreate"
    t.integer  "country"
    t.integer  "gender_id"
    t.string   "comments"
    t.integer  "missinginfochemo"
    t.integer  "missinginforadio"
    t.integer  "missinginfosurgery"
    t.integer  "chronicdisease"
    t.string   "chronicdiseasespec"
    t.integer  "chromosomaldisorder"
    t.string   "chromosomaldisorderspec"
    t.integer  "immunedeficiency"
    t.integer  "congenitalanomaly"
    t.integer  "neurofibromatosis"
    t.string   "otherfamilialcancersyndspec"
    t.integer  "cancerinfamily"
    t.string   "cancerinfamilyspec"
    t.integer  "prevsurgicalprocedures"
    t.string   "prevsurgicalproceduresspec"
    t.integer  "prevradtherapy",                                 :limit => 255
    t.string   "firstprimcancerdiagnosis"
    t.integer  "firstprimcancertype"
    t.integer  "leukemiasubtype"
    t.integer  "hodgkinlymphomasubtype"
    t.integer  "nonhodgkinlymphomasubtype"
    t.integer  "cnstumorhistologicaltype"
    t.integer  "cnstumorprimarytumorsite"
    t.string   "cnstumorprimarytumorsiteotherspec"
    t.integer  "cnstumorlaterality"
    t.integer  "neuroblastomaprimarytumorsite"
    t.integer  "neuroblastomalaterality"
    t.integer  "neuroblastomametastasisatdiagnosis"
    t.integer  "renaltumortype"
    t.string   "renaltumortypeotherspec"
    t.integer  "renaltumorlaterality"
    t.integer  "renaltumormetastasisatdiagnosis"
    t.integer  "malignantbonetumortype"
    t.integer  "malignantbonetumorlaterality"
    t.integer  "malignantbonetumormetastasisatdiagnosis"
    t.integer  "malignantbonetumorprimarytumorsite"
    t.string   "malignantbonetumorprimarytumorsiteotherspec"
    t.integer  "softtissuesarcomastumortype"
    t.string   "softtissuesarcomastumortypeotherspec"
    t.integer  "softtissuesarcomaslaterality"
    t.integer  "softtissuesarcomasprimarytumorsite"
    t.string   "softtissuesarcomasprimarytumorsiteotherspec"
    t.integer  "softtissuesarcomasmetastasisatdiagnosis"
    t.integer  "retinoblastomalaterality"
    t.integer  "hepatictumortype"
    t.integer  "carcinomastumortype"
    t.string   "carcinomastumortypeotherspec"
    t.integer  "carcinomaslaterality"
    t.integer  "carcinomasmetastasisatdiagnosis"
    t.integer  "germcelltumorsandgonadalstumorstype"
    t.integer  "germcelltumorsandgonadalstumorslaterality"
    t.integer  "germcellandgonadalstumorsmetastasisatdiagnosis"
    t.integer  "othertumortype"
    t.string   "othertumortypeotherspec"
    t.integer  "otherprimarytumorsite"
    t.string   "otherprimarytumorsiteotherspec"
    t.integer  "remissionstatus"
    t.integer  "lastdoctorsvisitstatus"
    t.string   "permanentcomplicationsspec"
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
    t.string   "studynumber"
    t.date     "dateofextraction"
    t.integer  "otherfamilialcancersynd"
    t.string   "prevradtherapyspec"
    t.string   "malignantbonetumortypeotherspec"
    t.integer  "germcelltumorsandgonadaltumorslaterality"
    t.boolean  "is_done"
    t.integer  "radiorecordscopied_day"
    t.integer  "radiorecordscopied_month"
    t.integer  "radiorecordscopied_year"
    t.integer  "dateofdiagnosis_day"
    t.integer  "dateofdiagnosis_month"
    t.integer  "dateofdiagnosis_year"
    t.integer  "lastdoctorsvisit_day"
    t.integer  "lastdoctorsvisit_month"
    t.integer  "lastdoctorsvisit_year"
  end

  add_index "patients", ["gender_id"], :name => "index_patients_on_gender_id"
  add_index "patients", ["user_id"], :name => "index_patients_on_user_id"

  create_table "radiation_qualities", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relapses", :force => true do |t|
    t.integer  "number"
    t.date     "date"
    t.integer  "journal_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "remission_statuses", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "renal_tumor_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "shielding_of_organs_specs", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "soft_tissue_sarcomas_primary_tumor_sites", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "soft_tissue_sarcomas_tumor_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "sources", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "surgeries", :force => true do |t|
    t.integer  "surgerytype"
    t.integer  "surgeryradicality"
    t.integer  "surgerycompleteremovalorgan"
    t.integer  "surgerycompleteremovalorganspec"
    t.integer  "surgerycompleteremovalorganlaterality"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "journal_id"
    t.integer  "surgerydate_day"
    t.integer  "surgerydate_month"
    t.integer  "surgerydate_year"
  end

  create_table "surgery_complete_removal_organ_lateralities", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surgery_radicalities", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "surgery_types", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "seq"
  end

  create_table "type_of_brachytherapy_codes", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin"
    t.integer  "institute_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
