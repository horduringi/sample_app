class CreateTypeOfBrachytherapyCodes < ActiveRecord::Migration
  def change
    create_table :type_of_brachytherapy_codes do |t|
      t.string :text

      t.timestamps
    end
  end
end
