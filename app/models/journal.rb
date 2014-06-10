class Journal < ActiveRecord::Base
  attr_accessible *column_names, :relapses_attributes, :cytostatic_drug_given_attributes, :bone_marrow_transplantations_attributes, :dateofextraction, :chemotherapybodysurfaceatdiagnosis, :chemotherapyweightatdiagnosis, :chemotherapyheightatdiagnosis, :chemotherapyestimated, :chemo_therapies_attributes, :surgeries_attributes, :bonemarrowtransplantation, :brachytherapy, :brachytherapydateofcompletion, :brachytherapydateofstart, :brachytherapydose, :brachytherapytargetvolume, :cancerinfamily, :cancerinfamilyspec, :carcinomaslaterality, :carcinomasmetastasisatdiagnosis, :carcinomastumortype, :carcinomastumortypeotherspec, :chemocardioprotectants, :chemotherapy, :chemotherapyCVC, :chemotherapydatecompletion, :chemotherapydateinitiation, :chemotherapyinsertiondatecvc, :chemotherapyknownnumberofcvc, :chemotherapynumberofcvc, :chemotherapypermanentremovaldate, :chemotherapytreatmentprotocol, :chemotherapytreatmentprotocolspec, :chromosomaldisorder, :chromosomaldisorderspec, :chronicdisease, :chronicdiseasespec, :cnstumorhistologicaltype, :cnstumorlaterality, :cnstumorprimarytumorsite, :cnstumorprimarytumorsiteotherspec, :comments, :congenitalanomaly, :country, :datecreate, :dateofdiagnosis, :externalbeamradiotherapy, :externalbeamradiotherapytreatinghospital, :externalbeamradiotherapyrecordscopied, :externalbeamradiotherapydateofcompletion, :externalbeamradiotherapydateofstart, :firstprimcancerdiagnosis, :firstprimcancertype, :gender, :germcellandgonadalstumorsmetastasisatdiagnosis, :germcelltumorsandgonadalstumorstype, :germcelltumorsandgonadaltumorslaterality, :hepatictumortype, :hodgkinlymphomasubtype, :immunedeficiency, :internalradiotherapy, :internalradiotherapytreatinghospital, :internalradiotherapyrecordscopied, :internalradiotherapydateofstart, :internalradiotherapydosage, :internalradiotherapyradioactiveagent, :internalradiotherapyradioactiveagentspec, :internalradiotherapytotaldose, :lastdoctorsvisitdate, :lastdoctorsvisitstatus, :leukemiasubtype, :malignantbonetumorlaterality, :malignantbonetumormetastasisatdiagnosis, :malignantbonetumorprimarytumorsite, :malignantbonetumorprimarytumorsiteotherspec, :malignantbonetumortype, :malignantbonetumortypeotherspec, :missinginfochemo, :missinginforadio, :missinginfosurgery, :neuroblastomalaterality, :neuroblastomametastasisatdiagnosis, :neuroblastomaprimarytumorsite, :neurofibromatosis, :nonhodgkinlymphomasubtype, :numberofbonemarrowtransplantations, :otherfamilialcancersynd, :otherfamilialcancersyndspec, :otherprimarytumorsite, :otherprimarytumorsiteotherspec, :othertumortype, :othertumortypeotherspec, :ovarianpinning, :permanentcomplicationspec, :prevradtherapy, :prevradtherapyspec, :prevsurgicalprocedures, :prevsurgicalproceduresspec, :radiationquality, :radio1nooffractions, :radio1targed1dose, :radio1targetvol1, :radio2nooffractions, :radio2targed2dose, :radio2targetvol2, :radio3nooffractions, :radio3targed3dose, :radio3targetvol3, :radiorecordscopied, :radiotherapy, :radiotherapyrecordscopied, :relapse, :relapseno, :remissionstatus, :renaltumorlaterality, :renaltumormetastasisatdiagnosis, :renaltumortype, :renaltumortypeotherspec, :retinoblastomalaterality, :shieldingoforgans, :shieldingoforgansspec, :shieldingoforgansspecother, :softtissuesarcomaslaterality, :softtissuesarcomasmetastasisatdiagnosis, :softtissuesarcomasprimarytumorsite, :softtissuesarcomasprimarytumorsiteotherspec, :softtissuesarcomastumortype, :softtissuesarcomastumortypeotherspec, :studynumber, :surgery, :typeofbrachytherapy, :brachytherapytreatinghospital, :brachytherapyrecordscopied, :typeofbrachytherapycode, :typeofbrachytherapycodespec, :user_id

  has_many :surgeries, dependent: :destroy
  has_many :chemo_therapies, dependent: :destroy
  has_many :bone_marrow_transplantations, dependent: :destroy
  has_many :cytostatic_drug_given, dependent: :destroy
  has_many :relapses, dependent: :destroy
  belongs_to :user
  belongs_to :patient, dependent: :destroy
  accepts_nested_attributes_for :surgeries, allow_destroy: true
  accepts_nested_attributes_for :chemo_therapies, allow_destroy: true
  accepts_nested_attributes_for :bone_marrow_transplantations, allow_destroy: true
  accepts_nested_attributes_for :cytostatic_drug_given, allow_destroy: true
  accepts_nested_attributes_for :relapses, allow_destroy: true

  validates_presence_of :patient_id, :radiotherapy, :surgery, :chemotherapy, :bonemarrowtransplantation

  validates_inclusion_of :relapse_date_day, :externalbeamradiotherapydateofstart_day, :externalbeamradiotherapydateofcompletion_day, :externalbeamradiotherapyrecordscopied_day, :brachytherapydateofstart_day, :brachytherapydateofcompletion_day, :brachytherapyrecordscopied_day, :internalradiotherapydateofstart_day, :internalradiotherapyrecordscopied_day, :chemotherapydateinitiation_day, :chemotherapydatecompletion_day, :chemotherapyinsertiondatecvc_day, :chemotherapypermanentremovaldate_day, :in => Array(1..31) + [99] + [nil]
  validates_inclusion_of :relapse_date_month, :externalbeamradiotherapydateofstart_month, :externalbeamradiotherapydateofcompletion_month, :externalbeamradiotherapyrecordscopied_month, :brachytherapydateofstart_month, :brachytherapydateofcompletion_month, :brachytherapyrecordscopied_month, :internalradiotherapydateofstart_month, :internalradiotherapyrecordscopied_month, :chemotherapydateinitiation_month, :chemotherapydatecompletion_month, :chemotherapyinsertiondatecvc_month, :chemotherapypermanentremovaldate_month, :in => Array(1..12) + [99] + [nil]
  validates_inclusion_of :relapse_date_year, :externalbeamradiotherapydateofstart_year, :externalbeamradiotherapydateofcompletion_year, :externalbeamradiotherapyrecordscopied_year, :brachytherapydateofstart_year, :brachytherapydateofcompletion_year, :brachytherapyrecordscopied_year, :internalradiotherapydateofstart_year, :internalradiotherapyrecordscopied_year, :chemotherapydateinitiation_year, :chemotherapydatecompletion_year, :chemotherapyinsertiondatecvc_year, :chemotherapypermanentremovaldate_year, :in => Array(1970..2100) + [99] + [nil]

  validates_presence_of :externalbeamradiotherapy, :brachytherapy, :internalradiotherapy, :if => :radio_therapy?
  #validates_presence_of :externalbeamradiotherapydateofstart_day, :externalbeamradiotherapydateofstart_month, :externalbeamradiotherapydateofstart_year, :externalbeamradiotherapydateofcompletion_day, :externalbeamradiotherapydateofcompletion_month, :externalbeamradiotherapydateofcompletion_year, :externalbeamradiotherapyrecordscopied_day, :externalbeamradiotherapyrecordscopied_month, :externalbeamradiotherapyrecordscopied_year, :if => :external_beam_radio_therapy?
  #validates_presence_of :brachytherapydateofstart_day, :brachytherapydateofstart_month, :brachytherapydateofstart_year, :brachytherapydateofcompletion_day, :brachytherapydateofcompletion_month, :brachytherapydateofcompletion_year, :brachytherapyrecordscopied_day, :brachytherapyrecordscopied_month, :brachytherapyrecordscopied_year, :if => :brachy_therapy?
  #validates_presence_of :internalradiotherapydateofstart_day, :internalradiotherapydateofstart_month, :internalradiotherapydateofstart_year, :internalradiotherapyrecordscopied_day, :internalradiotherapyrecordscopied_month, :internalradiotherapyrecordscopied_year, :if => :internal_radio_therapy?

  validates_presence_of :chemotherapydateinitiation_day, :chemotherapydateinitiation_month, :chemotherapydateinitiation_year, :chemotherapydatecompletion_day, :chemotherapydatecompletion_month, :chemotherapydatecompletion_year, :chemotherapybodysurfaceatdiagnosis, :chemotherapyweightatdiagnosis, :chemotherapyheightatdiagnosis, :chemocardioprotectants, :chemotherapyestimated, :chemotherapyCVC, :if => :chemo_therapy?
  validates_presence_of :chemotherapyinsertiondatecvc_day, :chemotherapyinsertiondatecvc_month, :chemotherapyinsertiondatecvc_year, :chemotherapypermanentremovaldate_day, :chemotherapypermanentremovaldate_month, :chemotherapypermanentremovaldate_year, :if => :cvc_inserted?

  validates_format_of :chemotherapybodysurfaceatdiagnosis, :chemotherapyweightatdiagnosis, :chemotherapyheightatdiagnosis,  :with => /^\d*+\,?\d*/
  def radio_therapy?
    radiotherapy == 1
  end
  def external_beam_radio_therapy?
    externalbeamradiotherapy == 1
  end
  def brachy_therapy?
    brachytherapy == 1
  end
  def internal_radio_therapy?
    internalradiotherapy == 1
  end
  def chemo_therapy?
    chemotherapy == 1
  end
  def cvc_inserted?
    chemotherapyCVC == 1
  end
  def self.setcountry(countryid)
    @journal.country = countryid
    @journal.save!
  end
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      columns = ["id", "patient_id", "relapse_date_day", "relapse_date_month", "relapse_date_year",
                "radiotherapy", "externalbeamradiotherapy",
                #"externalbeamradiotherapydateofstart_day",
                #"externalbeamradiotherapydateofstart_month", "externalbeamradiotherapydateofstart_year",
                #"externalbeamradiotherapydateofcompletion_day", "externalbeamradiotherapydateofcompletion_month",
                #"externalbeamradiotherapydateofcompletion_year", "externalbeamradiotherapytreatinghospital",
                #"externalbeamradiotherapyrecordscopied_day", "externalbeamradiotherapyrecordscopied_month",
                #"externalbeamradiotherapyrecordscopied_year",
                "brachytherapy", #"brachytherapydateofstart_day",
                #"brachytherapydateofstart_month", "brachytherapydateofstart_year", "brachytherapydateofcompletion_day",
                #"brachytherapydateofcompletion_month", "brachytherapydateofcompletion_year", "brachytherapytreatinghospital",
                #"brachytherapyrecordscopied_day", "brachytherapyrecordscopied_month", "brachytherapyrecordscopied_year",
                "internalradiotherapy", #"internalradiotherapydateofstart_day", "internalradiotherapydateofstart_month",
                #"internalradiotherapydateofstart_year", "internalradiotherapytreatinghospital", "internalradiotherapyrecordscopied_day",
                #"internalradiotherapyrecordscopied_month", "internalradiotherapyrecordscopied_year",
                "surgery",
                "chemotherapy", "chemotherapydateinitiation_day", "chemotherapydateinitiation_month", "chemotherapydateinitiation_year",
                "chemotherapydatecompletion_day", "chemotherapydatecompletion_month", "chemotherapydatecompletion_year",
                "chemotherapybodysurfaceatdiagnosis", "chemotherapyweightatdiagnosis", "chemotherapyheightatdiagnosis",
                "chemotherapyestimated", "chemocardioprotectants", "chemotherapytreatmentprotocolspec", 
                "chemotherapyCVC", "chemotherapynumberofcvc", "chemotherapyinsertiondatecvc_day", "chemotherapyinsertiondatecvc_month",
                "chemotherapyinsertiondatecvc_year", "chemotherapypermanentremovaldate_day", "chemotherapypermanentremovaldate_month",
                "chemotherapypermanentremovaldate_year", "bonemarrowtransplantation" 
      ]
      csv << columns
      all.each do |journal|
        csv << journal.attributes.values_at(*columns).collect{|item| if item.class == String then item.squish() end}
      end
    end
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

