class AddSeqToOtherTumorType < ActiveRecord::Migration
  def change
    add_column :other_tumor_types, :seq, :integer
  end
end
