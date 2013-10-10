class AddSeqToLateralityRlbu < ActiveRecord::Migration
  def change
    add_column :laterality_rlbus, :seq, :integer
  end
end
