class CreateLastDoctorsVisitStatuses < ActiveRecord::Migration
  def change
    create_table :last_doctors_visit_statuses do |t|
      t.string :text

      t.timestamps
    end
  end
end
