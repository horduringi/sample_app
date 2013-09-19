class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.integer :studynumber
      t.integer :userid
      t.datetime :datetimecreate
      t.integer :country
      t.integer :gender
      t.string :comments
      t.integer :missinginfochemo
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
      t.integer :otherfamilialcancersynd
      t.string :otherfamilialcancersyndspec
      t.integer :cancerinfamily
      t.string :cancerinfamilyspec
      t.integer :prevsurgicalprocedures
      t.string :prevsurgicalproceduresspec
      t.integer :prevradtherapy
      t.string :prevradtherapyspec
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
      t.string :malignantbonetumotypeotherspec
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
      t.integer :germcelltumorsandgonadaltumorslaterality
      t.integer :germcellandgonadalstumorsmetastasisatdiagnosis
      t.integer :othertumortype
      t.string :othertumortypeotherspec
      t.integer :otherprimarytumorsite
      t.string :otherprimarytumorsiteotherspec
      t.integer :radiotherapy
      t.integer :externalbeamradiotherapy
      t.date :externalbeamradiotherapydateofstart
      t.date :externalbeamradiotherapydateofcompletion
      t.float :radio1targetvol1
      t.float :radio1targed1dose
      t.integer :radio1nooffractions
      t.float :radio2targetvol2
      t.float :radio2targed2dose
      t.integer :radio2nooffractions
      t.float :radio3targetvol3
      t.float :radio3targed3dose
      t.integer :radio3nooffractions
      t.integer :radiationquality
      t.integer :ovarianpinning
      t.integer :shieldingoforgans
      t.integer :shieldingoforgansspec
      t.string :shieldingoforgansspecother
      t.integer :brachytherapy
      t.string :typeofbrachytherapy
      t.integer :typeofbrachytherapycode
      t.string :typeofbrachytherapycodespec
      t.integer :brachytherapytargetvolume
      t.float :brachytherapydose
      t.date :brachytherapydateofstart
      t.date :brachytherapydateofcompletion
      t.integer :internalradiotherapyradioactiveagent
      t.string :internalradiotherapyradioactiveagentspec
      t.date :internalradiotherapydateofstart
      t.float :internalradiotherapytotaldose
      t.integer :internalradiotherapydosage
      t.integer :radiotherapyrecordscopied
      t.integer :surgery
      t.integer :chemotherapy
      t.date :chemotherapydateinitiation
      t.date :chemotherapydatecompletion
      t.integer :chemotherapytreatmentprotocol
      t.string :chemotherapytreatmentprotocolspec
      t.integer :chemotherapyCVC
      t.integer :chemotherapyknownnumberofcvc
      t.integer :chemotherapynumberofcvc
      t.date :chemotherapyinsertiondatecvc
      t.date :chemotherapypermanentremovaldate
      t.integer :relapse
      t.integer :relapseno
      t.integer :remissionstatus
      t.date :lastdoctorsvisitdate
      t.integer :lastdoctorsvisitstatus
      t.string :permanentcomplicationspec
      t.integer :numberofbonemarrowtransplantations

      t.timestamps
    end
  end
end