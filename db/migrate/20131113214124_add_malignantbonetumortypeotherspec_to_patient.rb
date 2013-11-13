class AddMalignantbonetumortypeotherspecToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :malignantbonetumortypeotherspec, :string
  end
end
