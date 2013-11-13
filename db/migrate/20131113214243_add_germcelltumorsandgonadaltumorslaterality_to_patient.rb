class AddGermcelltumorsandgonadaltumorslateralityToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :germcelltumorsandgonadaltumorslaterality, :integer
  end
end
