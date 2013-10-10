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

ActiveRecord::Schema.define(:version => 20131010221338) do

  create_table "anthracyclines_bolus_infs", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bone_marrow_transplantations", :force => true do |t|
    t.integer  "recordid"
    t.integer  "transplantationnumber"
    t.date     "transplantationdate"
    t.integer  "autologous"
    t.integer  "allogeneic"
    t.integer  "donor"
    t.integer  "source"
    t.integer  "totalbodyirritation"
    t.date     "startdate"
    t.date     "completiondate"
    t.float    "cumulativedose"
    t.integer  "numberoffractions"
    t.integer  "radiotherapyrecordscopied"
    t.integer  "chemotherapy"
    t.date     "chemotherapydateofinitiation"
    t.date     "chemotherapydateofcompletion"
    t.float    "bodysurfaceconditioning"
    t.float    "weightconditioning"
    t.float    "heightconditioning"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
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
    t.integer  "recordid"
    t.integer  "yearnumber"
    t.date     "measurementdata"
    t.float    "bodysurface"
    t.float    "weight"
    t.float    "height"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
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

  create_table "cytostatic_drug_givens", :force => true do |t|
    t.integer  "cytostaticdrugid"
    t.integer  "recordid"
    t.integer  "chemoorbonemarrow"
    t.float    "totalcumulateddosemg"
    t.float    "totalcumulateddoseunits"
    t.integer  "dosequality"
    t.integer  "anthracyclinesbolusinfnoyes"
    t.integer  "anthracyclinesbolusinf"
    t.integer  "cardioprotectants"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "cytostatic_drugs", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "donors", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.integer  "userid"
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
    t.date     "externalbeamradiotherapydateofstart"
    t.date     "externalbeamradiotherapydateofcompletion"
    t.float    "radio1targed1dose"
    t.float    "radio2targed2dose"
    t.float    "radio3targed3dose"
    t.integer  "brachytherapy"
    t.date     "brachytherapydateofstart"
    t.date     "brachytherapydateofcompletion"
    t.date     "internalradiotherapydateofstart"
    t.integer  "surgery"
    t.integer  "chemotherapy"
    t.date     "chemotherapydateinitiation"
    t.date     "chemotherapydatecompletion"
    t.integer  "chemotherapytreatmentprotocol"
    t.string   "chemotherapytreatmentprotocolspec"
    t.integer  "chemotherapyCVC"
    t.integer  "chemotherapyknownnumberofcvc"
    t.integer  "chemotherapynumberofcvc"
    t.date     "chemotherapyinsertiondatecvc"
    t.date     "chemotherapypermanentremovaldate"
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
    t.date     "externalbeamradiotherapyrecordscopied"
    t.date     "brachytherapyrecordscopied"
    t.date     "internalradiotherapyrecordscopied"
    t.integer  "internalradiotherapy"
  end

  create_table "last_doctors_visit_statuses", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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

  create_table "radiation_qualities", :force => true do |t|
    t.string   "text"
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
  end

  create_table "surgeries", :force => true do |t|
    t.integer  "studynumber"
    t.date     "surgerydate"
    t.integer  "surgerytype"
    t.integer  "surgeryradicality"
    t.integer  "surgerycompleteremovalorgan"
    t.integer  "surgerycompleteremovalorganspec"
    t.integer  "surgerycompleteremovalorganlaterality"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "surgery_complete_removal_organ_lateralities", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surgery_complete_removal_organ_specs", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surgery_radicalities", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
