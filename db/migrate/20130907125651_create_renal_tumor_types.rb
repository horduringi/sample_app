class CreateRenalTumorTypes < ActiveRecord::Migration
  def change
    create_table :renal_tumor_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
