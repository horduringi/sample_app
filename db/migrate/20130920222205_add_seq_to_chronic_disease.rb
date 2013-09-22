class AddSeqToChronicDisease < ActiveRecord::Migration
  def change
    add_column :chronic_diseases, :seq, :integer
  end
end
