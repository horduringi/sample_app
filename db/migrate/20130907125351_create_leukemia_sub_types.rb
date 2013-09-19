class CreateLeukemiaSubTypes < ActiveRecord::Migration
  def change
    create_table :leukemia_sub_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
