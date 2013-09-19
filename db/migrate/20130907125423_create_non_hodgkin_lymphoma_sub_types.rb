class CreateNonHodgkinLymphomaSubTypes < ActiveRecord::Migration
  def change
    create_table :non_hodgkin_lymphoma_sub_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
