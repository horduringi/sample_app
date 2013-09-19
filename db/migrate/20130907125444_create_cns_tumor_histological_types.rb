class CreateCnsTumorHistologicalTypes < ActiveRecord::Migration
  def change
    create_table :cns_tumor_histological_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
