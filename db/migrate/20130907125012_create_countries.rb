class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :countrycode
      t.string :countryname

      t.timestamps
    end
  end
end
