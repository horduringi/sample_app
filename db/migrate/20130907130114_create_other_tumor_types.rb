class CreateOtherTumorTypes < ActiveRecord::Migration
  def change
    create_table :other_tumor_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
