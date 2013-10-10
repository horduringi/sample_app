class AddSeqToRenalTumorType < ActiveRecord::Migration
  def change
    add_column :renal_tumor_types, :seq, :integer
  end
end
