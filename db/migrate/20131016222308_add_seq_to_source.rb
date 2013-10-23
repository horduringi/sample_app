class AddSeqToSource < ActiveRecord::Migration
  def change
    add_column :sources, :seq, :integer
  end
end
