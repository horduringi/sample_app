class CreateCnsTumorPrimaryTumorSites < ActiveRecord::Migration
  def change
    create_table :cns_tumor_primary_tumor_sites do |t|
      t.string :text

      t.timestamps
    end
  end
end
