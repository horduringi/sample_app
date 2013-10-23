class AddBoneMarrowTransplanationReferenceToCytoStaticDrugGiven < ActiveRecord::Migration
  def change
    add_column CytostaticDrugGiven, :bone_marrow_transplantation_id, :integer
  end
end
