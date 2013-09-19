class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.integer :studynumber
      t.date :surgerydate
      t.integer :surgerytype
      t.integer :surgeryradicality
      t.integer :surgerycompleteremovalorgan
      t.integer :surgerycompleteremovalorganspec
      t.integer :surgerycompleteremovalorganlaterality

      t.timestamps
    end
  end
end
