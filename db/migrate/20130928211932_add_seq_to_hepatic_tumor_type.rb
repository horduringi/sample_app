class AddSeqToHepaticTumorType < ActiveRecord::Migration
  def change
    add_column :hepatic_tumor_types, :seq, :integer
  end
end
