class CreateHepaticTumorTypes < ActiveRecord::Migration
  def change
    create_table :hepatic_tumor_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
