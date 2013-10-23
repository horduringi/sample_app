class AddBoneMarrowTransplantationToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :bonemarrowtransplantation, :int
  end
end
