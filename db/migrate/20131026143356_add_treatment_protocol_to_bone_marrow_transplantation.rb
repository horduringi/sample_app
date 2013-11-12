class AddTreatmentProtocolToBoneMarrowTransplantation < ActiveRecord::Migration
  def change
    add_column :bone_marrow_transplantations, :treatmentprotocol, :string
  end
end
