class CreateGermCellTumorsAndGonadalsTumorTypes < ActiveRecord::Migration
  def change
    create_table :germ_cell_tumors_and_gonadals_tumor_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
