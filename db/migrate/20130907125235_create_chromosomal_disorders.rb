class CreateChromosomalDisorders < ActiveRecord::Migration
  def change
    create_table :chromosomal_disorders do |t|
      t.string :text

      t.timestamps
    end
  end
end
