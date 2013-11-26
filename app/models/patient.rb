class Patient < ActiveRecord::Base
  belongs_to :user
  belongs_to :gender
  has_many :journals
  attr_accessible *Patient.column_names, :cancerinfamily, :cancerinfamilyspec, :carcinomaslaterality, :carcinomasmetastasisatdiagnosis, :carcinomastumortype, :carcinomastumortypeotherspec, :chromosomaldisorder, :chromosomaldisorderspec, :chronicdisease, :chronicdiseasespec, :cnstumorhistologicaltype, :cnstumorlaterality, :cnstumorprimarytumorsite, :cnstumorprimarytumorsiteotherspec, :comments, :congenitalanomaly, :country, :datecreate, :dateofdiagnosis, :firstprimcancerdiagnosis, :firstprimcancertype, :germcelltumorsandgonadalstumorslaterality, :germcelltumorsandgonadalstumorsmetastasisatdiagnosis, :germcelltumorsandgonadalstumorstype, :hepatictumortype, :hodgkinlymphomasubtype, :immunedeficiency, :lastdoctorsvisit, :lastdoctorsvisitstatus, :leukemiasubtype, :malignantbonetumorlaterality, :malignantbonetumormetastasisatdiagnosis, :malignantbonetumorprimarytumorsite, :malignantbonetumorprimarytumorsiteotherspec, :malignantbonetumortype, :missinginfochemo, :missinginforadio, :missinginforadio, :missinginfosurgery, :neuroblastomalaterality, :neuroblastomametastasisatdiagnosis, :neuroblastomaprimarytumorsite, :neurofibromatosis, :nonhodgkinlymphomasubtype, :otherfamilialcancersyndspec, :otherprimarytumorsite, :otherprimarytumorsiteotherspec, :othertumortype, :othertumortypeotherspec, :permanentcomplicationsspec, :prevradtherapy, :prevradtherapy, :prevsurgicalprocedures, :prevsurgicalproceduresspec, :radiorecordscopied, :remissionstatus, :renaltumorlaterality, :renaltumormetastasisatdiagnosis, :renaltumortype, :renaltumortypeotherspec, :retinoblastomalaterality, :softtissuesarcomaslaterality, :softtissuesarcomasmetastasisatdiagnosis, :softtissuesarcomasprimarytumorsite, :softtissuesarcomasprimarytumorsiteotherspec, :softtissuesarcomastumortype, :softtissuesarcomastumortypeotherspec
  def self.to_csv(options = {}, params = {})
    max_journals_count = params[:max_journals_count].to_i
    max_surgeries_count = params[:max_surgeries_count].to_i
    max_chemo_therapies_count = params[:max_chemo_therapies_count].to_i
    max_cytostatic_drug_given_count = params[:max_cytostatic_drug_given_count].to_i
    CSV.generate(options) do |csv|
      row_header = []
      column_names.each do |c|
        row_header << c
      end
      (1..max_journals_count).each do |i|
        Journal.column_names.each do |c|
          row_header << c + i.to_s
        end
        (1..max_surgeries_count).each do |j|
          Surgery.column_names.each do |c|
            row_header << c + j.to_s
          end
        end
        (1..max_chemo_therapies_count).each do |k|
          ChemoTherapy.column_names.each do |c|
            row_header << c + k.to_s
          end
        end
        (1..max_cytostatic_drug_given_count).each do |k|
          CytostaticDrugGiven.column_names.each do |c|
            row_header << c + k.to_s
          end
        end
      end
      csv << row_header
      
      all.each do |patient|
        row = []
        patient.attributes.values_at(*column_names).each do |v|
          row << v
        end
        journal_nil_count = max_journals_count - Journal.where(patient_id: patient.id).count
        Journal.where(patient_id: patient.id).each do |journal|
          Journal.get_values(journal.id).each do |j|
            j.each do |value|
              row << value
            end
          end
          surgery_nil_count = max_surgeries_count - Surgery.where(journal_id: journal.id).count
          Surgery.where(journal_id: journal.id).each do |surgery|
            Surgery.get_values(surgery.id).each do |s|
              s.each do |value|
                row << value
              end
            end
            (1..surgery_nil_count).each do
              Surgery.column_names.each do
                row << nil
              end
            end
          end
          chemo_therapy_nil_count = max_chemo_therapies_count - ChemoTherapy.where(journal_id: journal.id).count
          ChemoTherapy.where(journal_id: journal.id).each do |chemo_therapy|
            ChemoTherapy.get_values(chemo_therapy.id).each do |c|
              c.each do |value|
                row << value
              end
            end
            (1..chemo_therapy_nil_count).each do
              ChemoTherapy.column_names.each do
                row << nil
              end
            end
          end
          cytostatic_drug_given_nil_count = max_cytostatic_drug_given_count - CytostaticDrugGiven.where(journal_id: journal.id).count
          CytostaticDrugGiven.where(journal_id: journal.id).each do |cytostatic_drug_given|
            CytostaticDrugGiven.get_values(cytostatic_drug_given.id).each do |c|
              c.each do |value|
                row << value
              end
            end
            (1..cytostatic_drug_given_nil_count).each do
              CytostaticDrugGiven.column_names.each do
                row << nil
              end
            end
          end
        end
        (1..journal_nil_count).each do
          Journal.column_names.each do
            row << nil
          end
        end

        csv << row
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