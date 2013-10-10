class AddSeqToLateralityRlbmn < ActiveRecord::Migration
  def change
    add_column :laterality_rlbmns, :seq, :integer
  end
end
