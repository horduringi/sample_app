class CreateBoneMarrowTransplantations < ActiveRecord::Migration
  def change
    create_table :bone_marrow_transplantations do |t|
      t.integer :recordid
      t.integer :transplantationnumber
      t.date :transplantationdate
      t.integer :autologous
      t.integer :allogeneic
      t.integer :donor
      t.integer :source
      t.integer :totalbodyirritation
      t.date :startdate
      t.date :completiondate
      t.float :cumulativedose
      t.integer :numberoffractions
      t.integer :radiotherapyrecordscopied
      t.integer :chemotherapy
      t.date :chemotherapydateofinitiation
      t.date :chemotherapydateofcompletion
      t.float :bodysurfaceconditioning
      t.float :weightconditioning
      t.float :heightconditioning

      t.timestamps
    end
  end
end
