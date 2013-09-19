class CreateCytostaticDrugs < ActiveRecord::Migration
  def change
    create_table :cytostatic_drugs do |t|
      t.string :text

      t.timestamps
    end
  end
end
