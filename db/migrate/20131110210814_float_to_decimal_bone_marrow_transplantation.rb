class FloatToDecimalBoneMarrowTransplantation < ActiveRecord::Migration
  def up
    change_column :bone_marrow_transplantations, :cumulativedose, :decimal
    change_column :bone_marrow_transplantations, :bodysurfaceconditioning, :decimal
    change_column :bone_marrow_transplantations, :weightconditioning, :decimal
    change_column :bone_marrow_transplantations, :heightconditioning, :decimal
  end

  def down
  end
end
