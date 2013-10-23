class AddSeqToLastDoctorsVisitStatus < ActiveRecord::Migration
  def change
    add_column :last_doctors_visit_statuses, :seq, :integer
  end
end
