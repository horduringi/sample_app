class AddSeqToChromosomalDisorder < ActiveRecord::Migration
  def change
    add_column :chromosomal_disorders, :seq, :integer
  end
end
