class CreateFirstPrimCancerTypes < ActiveRecord::Migration
  def change
    create_table :first_prim_cancer_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
