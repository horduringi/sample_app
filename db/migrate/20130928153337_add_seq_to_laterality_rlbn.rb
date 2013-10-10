class AddSeqToLateralityRlbn < ActiveRecord::Migration
  change_table :journals do |t|
    t.remove :radio1targetvol1, :radio1target1dose, :radio1nooffractions, :radio2targetvol2, :radio2target2dose, :radio2nooffractions, :radio3targetvol3, :radio3target3dose, :radio3nooffractions, :radiationquality, :ovarianpinning, :shieldingoforgans, :shieldingoforgansspec, :shieldingoforgansspecother, :typeofbrachytherapy, :typeofbrachytherapycode, :typeofbrachytherapycodespec, :brachytherapytargetvolume, :brachytherapydose, :internalradiotherapyradioactiveagent, :internalradiotherapyradioactiveagentspec, :internalradiotherapytotaldose, :internalradiotherapydosage, :radiotherapyrecordscopied
    t.string :externalbeamradiotherapytreatinghospital, :brachytherapytreatinghospital, :internalradiotherapytreatinghospital
    t.date :exthernalbeamradiotherapyrecordscopied, :brachytherapyrecordscopied, :internalradiotherapyrecordscopied
  end
end
