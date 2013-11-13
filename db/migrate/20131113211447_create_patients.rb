class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.references :user
      t.date :datecreate
      t.integer :country
      t.references :gender
      t.string :comments
      t.integer :missinginfochemo
      t.integer :missinginforadio
      t.integer :missinginforadio
      t.integer :missinginfosurgery
      t.date :radiorecordscopied
      t.integer :chronicdisease
      t.string :chronicdiseasespec
      t.integer :chromosomaldisorder
      t.string :chromosomaldisorderspec
      t.integer :immunedeficiency
      t.integer :congenitalanomaly
      t.integer :neurofibromatosis
      t.string :otherfamilialcancersyndspec
      t.integer :cancerinfamily
      t.string :cancerinfamilyspec
      t.integer :prevsurgicalprocedures
      t.string :prevsurgicalproceduresspec
      t.integer :prevradtherapy
      t.string :prevradtherapy
      t.string :firstprimcancerdiagnosis
      t.date :dateofdiagnosis
      t.integer :firstprimcancertype
      t.integer :leukemiasubtype
      t.integer :hodgkinlymphomasubtype
      t.integer :nonhodgkinlymphomasubtype
      t.integer :cnstumorhistologicaltype
      t.integer :cnstumorprimarytumorsite
      t.string :cnstumorprimarytumorsiteotherspec
      t.integer :cnstumorlaterality
      t.integer :neuroblastomaprimarytumorsite
      t.integer :neuroblastomalaterality
      t.integer :neuroblastomametastasisatdiagnosis
      t.integer :renaltumortype
      t.string :renaltumortypeotherspec
      t.integer :renaltumorlaterality
      t.integer :renaltumormetastasisatdiagnosis
      t.integer :malignantbonetumortype
      t.integer :malignantbonetumorlaterality
      t.integer :malignantbonetumormetastasisatdiagnosis
      t.integer :malignantbonetumorprimarytumorsite
      t.string :malignantbonetumorprimarytumorsiteotherspec
      t.integer :softtissuesarcomastumortype
      t.string :softtissuesarcomastumortypeotherspec
      t.integer :softtissuesarcomaslaterality
      t.integer :softtissuesarcomasprimarytumorsite
      t.string :softtissuesarcomasprimarytumorsiteotherspec
      t.integer :softtissuesarcomasmetastasisatdiagnosis
      t.integer :retinoblastomalaterality
      t.integer :hepatictumortype
      t.integer :carcinomastumortype
      t.string :carcinomastumortypeotherspec
      t.integer :carcinomaslaterality
      t.integer :carcinomasmetastasisatdiagnosis
      t.integer :germcelltumorsandgonadalstumorstype
      t.integer :germcelltumorsandgonadalstumorslaterality
      t.integer :germcelltumorsandgonadalstumorsmetastasisatdiagnosis
      t.integer :othertumortype
      t.string :othertumortypeotherspec
      t.integer :otherprimarytumorsite
      t.string :otherprimarytumorsiteotherspec
      t.integer :remissionstatus
      t.date :lastdoctorsvisit
      t.integer :lastdoctorsvisitstatus
      t.string :permanentcomplicationsspec

      t.timestamps
    end
    add_index :patients, :user_id
    add_index :patients, :gender_id
  end
end
