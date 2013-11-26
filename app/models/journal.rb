class Journal < ActiveRecord::Base
  attr_accessible *column_names, :relapses_attributes, :cytostatic_drug_given_attributes, :bone_marrow_transplantations_attributes, :dateofextraction, :chemotherapybodysurfaceatdiagnosis, :chemotherapyweightatdiagnosis, :chemotherapyheightatdiagnosis, :chemotherapyestimated, :chemo_therapies_attributes, :surgeries_attributes, :bonemarrowtransplantation, :brachytherapy, :brachytherapydateofcompletion, :brachytherapydateofstart, :brachytherapydose, :brachytherapytargetvolume, :cancerinfamily, :cancerinfamilyspec, :carcinomaslaterality, :carcinomasmetastasisatdiagnosis, :carcinomastumortype, :carcinomastumortypeotherspec, :chemocardioprotectants, :chemotherapy, :chemotherapyCVC, :chemotherapydatecompletion, :chemotherapydateinitiation, :chemotherapyinsertiondatecvc, :chemotherapyknownnumberofcvc, :chemotherapynumberofcvc, :chemotherapypermanentremovaldate, :chemotherapytreatmentprotocol, :chemotherapytreatmentprotocolspec, :chromosomaldisorder, :chromosomaldisorderspec, :chronicdisease, :chronicdiseasespec, :cnstumorhistologicaltype, :cnstumorlaterality, :cnstumorprimarytumorsite, :cnstumorprimarytumorsiteotherspec, :comments, :congenitalanomaly, :country, :datecreate, :dateofdiagnosis, :externalbeamradiotherapy, :externalbeamradiotherapytreatinghospital, :externalbeamradiotherapyrecordscopied, :externalbeamradiotherapydateofcompletion, :externalbeamradiotherapydateofstart, :firstprimcancerdiagnosis, :firstprimcancertype, :gender, :germcellandgonadalstumorsmetastasisatdiagnosis, :germcelltumorsandgonadalstumorstype, :germcelltumorsandgonadaltumorslaterality, :hepatictumortype, :hodgkinlymphomasubtype, :immunedeficiency, :internalradiotherapy, :internalradiotherapytreatinghospital, :internalradiotherapyrecordscopied, :internalradiotherapydateofstart, :internalradiotherapydosage, :internalradiotherapyradioactiveagent, :internalradiotherapyradioactiveagentspec, :internalradiotherapytotaldose, :lastdoctorsvisitdate, :lastdoctorsvisitstatus, :leukemiasubtype, :malignantbonetumorlaterality, :malignantbonetumormetastasisatdiagnosis, :malignantbonetumorprimarytumorsite, :malignantbonetumorprimarytumorsiteotherspec, :malignantbonetumortype, :malignantbonetumortypeotherspec, :missinginfochemo, :missinginforadio, :missinginfosurgery, :neuroblastomalaterality, :neuroblastomametastasisatdiagnosis, :neuroblastomaprimarytumorsite, :neurofibromatosis, :nonhodgkinlymphomasubtype, :numberofbonemarrowtransplantations, :otherfamilialcancersynd, :otherfamilialcancersyndspec, :otherprimarytumorsite, :otherprimarytumorsiteotherspec, :othertumortype, :othertumortypeotherspec, :ovarianpinning, :permanentcomplicationspec, :prevradtherapy, :prevradtherapyspec, :prevsurgicalprocedures, :prevsurgicalproceduresspec, :radiationquality, :radio1nooffractions, :radio1targed1dose, :radio1targetvol1, :radio2nooffractions, :radio2targed2dose, :radio2targetvol2, :radio3nooffractions, :radio3targed3dose, :radio3targetvol3, :radiorecordscopied, :radiotherapy, :radiotherapyrecordscopied, :relapse, :relapseno, :remissionstatus, :renaltumorlaterality, :renaltumormetastasisatdiagnosis, :renaltumortype, :renaltumortypeotherspec, :retinoblastomalaterality, :shieldingoforgans, :shieldingoforgansspec, :shieldingoforgansspecother, :softtissuesarcomaslaterality, :softtissuesarcomasmetastasisatdiagnosis, :softtissuesarcomasprimarytumorsite, :softtissuesarcomasprimarytumorsiteotherspec, :softtissuesarcomastumortype, :softtissuesarcomastumortypeotherspec, :studynumber, :surgery, :typeofbrachytherapy, :brachytherapytreatinghospital, :brachytherapyrecordscopied, :typeofbrachytherapycode, :typeofbrachytherapycodespec, :user_id

  has_many :surgeries
  has_many :chemo_therapies
  has_many :bone_marrow_transplantations
  has_many :cytostatic_drug_given
  has_many :relapses
  belongs_to :user
  belongs_to :patient
  accepts_nested_attributes_for :surgeries, allow_destroy: true
  accepts_nested_attributes_for :chemo_therapies, allow_destroy: true
  accepts_nested_attributes_for :bone_marrow_transplantations, allow_destroy: true
  accepts_nested_attributes_for :cytostatic_drug_given, allow_destroy: true
  accepts_nested_attributes_for :relapses, allow_destroy: true
  def self.setcountry(countryid)
    @journal.country = countryid
    @journal.save!
  end
  def self.max_surgeries_count
    @j = self.find(:all, :select => 'journals.*, count(surgeries.id) as surgeries_count',
             :joins => 'left outer join surgeries on surgeries.journal_id = journals.id',
             :group => 'journals.id',
             :order => 'surgeries_count DESC',
             :limit => 1
            )
    Surgery.where(journal_id: @j[0].id).count
  end
  def self.max_chemo_therapies_count
    @j = self.find(:all, :select => 'journals.*, count(chemo_therapies.id) as chemo_therapies_count',
             :joins => 'left outer join chemo_therapies on chemo_therapies.journal_id = journals.id',
             :group => 'journals.id',
             :order => 'chemo_therapies_count DESC',
             :limit => 1
            )
    ChemoTherapy.where(journal_id: @j[0].id).count
  end
  def self.max_cytostatic_drug_given_count
    @j = self.find(:all, :select => 'journals.*, count(cytostatic_drug_givens.id) as cytostatic_drug_givens_count',
             :joins => 'left outer join cytostatic_drug_givens on cytostatic_drug_givens.journal_id = journals.id',
             :group => 'journals.id',
             :order => 'cytostatic_drug_givens_count DESC',
             :limit => 1
            )
    CytostaticDrugGiven.where(journal_id: @j[0].id).count
  end
  def self.get_values(id)
    row = []
    j = Journal.find(id)
    row << j.attributes.values_at(*column_names)
  end
end

