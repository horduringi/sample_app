class AddSeqToMissingInfo < ActiveRecord::Migration
  def change
    add_column :missing_infos, :seq, :integer
  end
end
