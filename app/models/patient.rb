class Patient < ActiveRecord::Base
  belongs_to :user
  belongs_to :gender
  has_many :journals
  attr_accessible *Patient.column_names, :cancerinfamily, :cancerinfamilyspec, :carcinomaslaterality, :carcinomasmetastasisatdiagnosis, :carcinomastumortype, :carcinomastumortypeotherspec, :chromosomaldisorder, :chromosomaldisorderspec, :chronicdisease, :chronicdiseasespec, :cnstumorhistologicaltype, :cnstumorlaterality, :cnstumorprimarytumorsite, :cnstumorprimarytumorsiteotherspec, :comments, :congenitalanomaly, :country, :datecreate, :dateofdiagnosis, :firstprimcancerdiagnosis, :firstprimcancertype, :germcelltumorsandgonadalstumorslaterality, :germcelltumorsandgonadalstumorsmetastasisatdiagnosis, :germcelltumorsandgonadalstumorstype, :hepatictumortype, :hodgkinlymphomasubtype, :immunedeficiency, :lastdoctorsvisit, :lastdoctorsvisitstatus, :leukemiasubtype, :malignantbonetumorlaterality, :malignantbonetumormetastasisatdiagnosis, :malignantbonetumorprimarytumorsite, :malignantbonetumorprimarytumorsiteotherspec, :malignantbonetumortype, :missinginfochemo, :missinginforadio, :missinginforadio, :missinginfosurgery, :neuroblastomalaterality, :neuroblastomametastasisatdiagnosis, :neuroblastomaprimarytumorsite, :neurofibromatosis, :nonhodgkinlymphomasubtype, :otherfamilialcancersyndspec, :otherprimarytumorsite, :otherprimarytumorsiteotherspec, :othertumortype, :othertumortypeotherspec, :permanentcomplicationsspec, :prevradtherapy, :prevradtherapy, :prevsurgicalprocedures, :prevsurgicalproceduresspec, :radiorecordscopied, :remissionstatus, :renaltumorlaterality, :renaltumormetastasisatdiagnosis, :renaltumortype, :renaltumortypeotherspec, :retinoblastomalaterality, :softtissuesarcomaslaterality, :softtissuesarcomasmetastasisatdiagnosis, :softtissuesarcomasprimarytumorsite, :softtissuesarcomasprimarytumorsiteotherspec, :softtissuesarcomastumortype, :softtissuesarcomastumortypeotherspec
  validates_presence_of :gender_id, :missinginfochemo, :missinginforadio, :missinginfosurgery, :radiorecordscopied_day, :radiorecordscopied_month, :radiorecordscopied_year, :dateofextraction, :chronicdisease, :chromosomaldisorder, :immunedeficiency, :congenitalanomaly, :neurofibromatosis, :otherfamilialcancersynd, :cancerinfamily, :prevsurgicalprocedures, :prevradtherapy, :dateofdiagnosis_day, :dateofdiagnosis_month, :dateofdiagnosis_year, :firstprimcancertype, :on => :update
  validates_presence_of :leukemiasubtype, :if => :first_leukemia?
  validates_presence_of :hodgkinlymphomasubtype, :if => :first_hodgkinlymphomasubtype?
  validates_presence_of :nonhodgkinlymphomasubtype, :if => :first_nonhodgkinlymphomasubtype?
  validates_presence_of :cnstumorhistologicaltype, :cnstumorprimarytumorsite, :cnstumorlaterality,  :if => :first_cnstumorhistologicaltype?
  validates_presence_of :neuroblastomaprimarytumorsite, :neuroblastomalaterality, :neuroblastomametastasisatdiagnosis,  :if => :first_neuroblastomaprimarytumorsite?
  validates_presence_of :renaltumortype, :renaltumorlaterality, :renaltumormetastasisatdiagnosis, :if => :first_renaltumortype?
  validates_presence_of :malignantbonetumortype, :malignantbonetumorlaterality, :malignantbonetumormetastasisatdiagnosis, :malignantbonetumorprimarytumorsite, :if => :first_malignantbonetumortype?
  validates_presence_of :softtissuesarcomastumortype, :softtissuesarcomaslaterality, :softtissuesarcomasprimarytumorsite, :softtissuesarcomasmetastasisatdiagnosis, :if => :first_softtissuesarcomastumortype?
  validates_presence_of :retinoblastomalaterality, :if => :first_retinoblastomalaterality?
  validates_presence_of :hepatictumortype, :if => :first_hepatictumortype?
  validates_presence_of :carcinomastumortype, :carcinomaslaterality, :carcinomasmetastasisatdiagnosis, :if => :first_carcinomastumortype?
  validates_presence_of :germcelltumorsandgonadalstumorstype, :germcelltumorsandgonadaltumorslaterality, :germcellandgonadalstumorsmetastasisatdiagnosis, :if => :first_germcelltumorsandgonadalstumorstype?
  validates_presence_of :othertumortype, :otherprimarytumorsite, :if => :first_othertumortype?

  validates_inclusion_of :radiorecordscopied_day, :dateofdiagnosis_day, :lastdoctorsvisit_day, :in => Array(1..31) + [99] + [nil]
  validates_inclusion_of :radiorecordscopied_month, :dateofdiagnosis_month, :lastdoctorsvisit_month, :in => Array(1..12) + [99] + [nil]
  validates_inclusion_of :radiorecordscopied_year, :dateofdiagnosis_year, :lastdoctorsvisit_year, :in => Array(1970..2013) + [99] + [nil]

  validates_presence_of :lastdoctorsvisit_day, :lastdoctorsvisit_month, :lastdoctorsvisit_year, :lastdoctorsvisitstatus, :if => :is_done?

  def is_done?
    is_done
  end

  def first_leukemia?
    firstprimcancertype == 1
  end
  def first_hodgkinlymphomasubtype?
    firstprimcancertype == 2
  end
  def first_nonhodgkinlymphomasubtype?
    firstprimcancertype == 3
  end
  def first_cnstumorhistologicaltype?
    firstprimcancertype == 4
  end
  def first_neuroblastomaprimarytumorsite?
    firstprimcancertype == 5
  end
  def first_renaltumortype?
    firstprimcancertype == 6
  end
  def first_malignantbonetumortype?
    firstprimcancertype == 7
  end
  def first_softtissuesarcomastumortype?
    firstprimcancertype == 8
  end
  def first_retinoblastomalaterality?
    firstprimcancertype == 9
  end
  def first_hepatictumortype?
    firstprimcancertype == 10
  end
  def first_carcinomastumortype?
    firstprimcancertype == 11
  end
  def first_germcelltumorsandgonadalstumorstype?
    firstprimcancertype == 12
  end
  def first_othertumortype?
    firstprimcancertype == 13
  end
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      columns = ["id", "country", "studynumber", "gender_id", "comments",
                 "missinginfochemo", "missinginforadio", "missinginfosurgery",
                 "radiorecordscopied_day", "radiorecordscopied_month", "radiorecordscopied_year",
                 "user_id", "dateofextraction", "chronicdisease", "chronicdiseasespec",
                 "chromosomaldisorder", "chromosomaldisorderspec", "immunedeficiency",
                 "congenitalanomaly", "neurofibromatosis", "otherfamilialcancersynd",
                 "otherfamilialcancersyndspec", "cancerinfamily", "cancerinfamilyspec",
                 "prevsurgicalprocedures", "prevsurgicalproceduresspec", "prevradtherapy",
                 "prevradtherapyspec", "firstprimcancerdiagnosis", "dateofdiagnosis_day",
                 "dateofdiagnosis_month", "dateofdiagnosis_year", "firstprimcancertype",
                 "leukemiasubtype", "hodgkinlymphomasubtype", "nonhodgkinlymphomasubtype",
                 "cnstumorhistologicaltype", "cnstumorprimarytumorsite",
                 "cnstumorprimarytumorsiteotherspec", "cnstumorlaterality", "neuroblastomaprimarytumorsite",
                 "neuroblastomalaterality", "neuroblastomametastasisatdiagnosis",
                 "renaltumortype", "renaltumortypeotherspec", "renaltumorlaterality",
                 "renaltumormetastasisatdiagnosis", "malignantbonetumortype",
                 "malignantbonetumortypeotherspec", "malignantbonetumorlaterality",
                 "malignantbonetumormetastasisatdiagnosis", "malignantbonetumorprimarytumorsite",
                 "malignantbonetumorprimarytumorsiteotherspec", "softtissuesarcomastumortype",
                 "malignantbonetumorprimarytumorsiteotherspec", "softtissuesarcomaslaterality",
                 "softtissuesarcomasprimarytumorsite", "softtissuesarcomasprimarytumorsiteotherspec",
                 "softtissuesarcomasmetastasisatdiagnosis", "retinoblastomalaterality",
                 "hepatictumortype", "carcinomastumortype", "carcinomastumortypeotherspec",
                 "carcinomaslaterality", "carcinomasmetastasisatdiagnosis", "germcelltumorsandgonadalstumorstype",
                 "germcelltumorsandgonadaltumorslaterality", "germcellandgonadalstumorsmetastasisatdiagnosis", "othertumortype",
                 "othertumortypeotherspec", "otherprimarytumorsite", "otherprimarytumorsiteotherspec"
               ]
      csv << columns
      all.each do |patient|
        csv << patient.attributes.values_at(*columns)
      end
    end
  end
  def self.max_journals_count
    @p = self.find(:all, :select => 'patients.*, count(journals.id) as journals_count',
             :joins => 'left outer join journals on journals.patient_id = patients.id',
             :group => 'patients.id',
             :order => 'journals_count DESC',
             :limit => 1
            )
    Journal.where(patient_id: @p[0].id).count
  end
end