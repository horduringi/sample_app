class AddSeqToLateralityRlbmu < ActiveRecord::Migration
  def change
    add_column :laterality_rlbmus, :seq, :integer
  end
end
