class CreateCarcinomasTumorTypes < ActiveRecord::Migration
  def change
    create_table :carcinomas_tumor_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
