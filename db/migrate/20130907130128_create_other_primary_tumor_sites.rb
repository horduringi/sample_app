class CreateOtherPrimaryTumorSites < ActiveRecord::Migration
  def change
    create_table :other_primary_tumor_sites do |t|
      t.string :text

      t.timestamps
    end
  end
end
