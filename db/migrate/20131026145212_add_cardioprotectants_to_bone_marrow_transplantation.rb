class AddCardioprotectantsToBoneMarrowTransplantation < ActiveRecord::Migration
  def change
    add_column :bone_marrow_transplantations, :cardioprotectants, :integer
  end
end
