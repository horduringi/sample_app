class AddEstimatedToChemoTherapy < ActiveRecord::Migration
  def change
    add_column :chemo_therapies, :estimated, :integer
  end
end
