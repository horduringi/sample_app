class AddOtherfamilialcancersyndToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :otherfamilialcancersynd, :integer
  end
end
