class CreateShieldingOfOrgansSpecs < ActiveRecord::Migration
  def change
    create_table :shielding_of_organs_specs do |t|
      t.string :text

      t.timestamps
    end
  end
end
