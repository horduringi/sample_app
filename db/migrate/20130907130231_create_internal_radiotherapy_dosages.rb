class CreateInternalRadiotherapyDosages < ActiveRecord::Migration
  def change
    create_table :internal_radiotherapy_dosages do |t|
      t.string :text

      t.timestamps
    end
  end
end
