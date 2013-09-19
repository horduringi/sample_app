class CreateSurgeryRadicalities < ActiveRecord::Migration
  def change
    create_table :surgery_radicalities do |t|
      t.string :text

      t.timestamps
    end
  end
end
