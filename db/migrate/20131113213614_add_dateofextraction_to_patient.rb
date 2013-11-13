class AddDateofextractionToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :dateofextraction, :date
  end
end
