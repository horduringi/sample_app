class CreateSurgeryTypes < ActiveRecord::Migration
  def change
    create_table :surgery_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
