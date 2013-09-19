class CreateRemissionStatuses < ActiveRecord::Migration
  def change
    create_table :remission_statuses do |t|
      t.string :text

      t.timestamps
    end
  end
end
