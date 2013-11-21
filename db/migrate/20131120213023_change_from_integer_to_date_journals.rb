class ChangeFromIntegerToDateJournals < ActiveRecord::Migration
  def up
    remove_column :journals, :relapse_date
    add_column :journals, :relapse_date_day, :integer
    add_column :journals, :relapse_date_month, :integer
    add_column :journals, :relapse_date_year, :integer
    remove_column :journals, :externalbeamradiotherapydateofstart
    add_column :journals, :externalbeamradiotherapydateofstart_day, :integer
    add_column :journals, :externalbeamradiotherapydateofstart_month, :integer
    add_column :journals, :externalbeamradiotherapydateofstart_year, :integer
    remove_column :journals, :externalbeamradiotherapydateofcompletion
    add_column :journals, :externalbeamradiotherapydateofcompletion_day, :integer
    add_column :journals, :externalbeamradiotherapydateofcompletion_month, :integer
    add_column :journals, :externalbeamradiotherapydateofcompletion_year, :integer
    remove_column :journals, :externalbeamradiotherapyrecordscopied
    add_column :journals, :externalbeamradiotherapyrecordscopied_day, :integer
    add_column :journals, :externalbeamradiotherapyrecordscopied_month, :integer
    add_column :journals, :externalbeamradiotherapyrecordscopied_year, :integer
    remove_column :journals, :brachytherapydateofstart
    add_column :journals, :brachytherapydateofstart_day, :integer
    add_column :journals, :brachytherapydateofstart_month, :integer
    add_column :journals, :brachytherapydateofstart_year, :integer
    remove_column :journals, :brachytherapydateofcompletion
    add_column :journals, :brachytherapydateofcompletion_day, :integer
    add_column :journals, :brachytherapydateofcompletion_month, :integer
    add_column :journals, :brachytherapydateofcompletion_year, :integer
    remove_column :journals, :brachytherapyrecordscopied
    add_column :journals, :brachytherapyrecordscopied_day, :integer
    add_column :journals, :brachytherapyrecordscopied_month, :integer
    add_column :journals, :brachytherapyrecordscopied_year, :integer
    remove_column :journals, :internalradiotherapydateofstart
    add_column :journals, :internalradiotherapydateofstart_day, :integer
    add_column :journals, :internalradiotherapydateofstart_month, :integer
    add_column :journals, :internalradiotherapydateofstart_year, :integer
    remove_column :journals, :internalradiotherapyrecordscopied
    add_column :journals, :internalradiotherapyrecordscopied_day, :integer
    add_column :journals, :internalradiotherapyrecordscopied_month, :integer
    add_column :journals, :internalradiotherapyrecordscopied_year, :integer
    remove_column :journals, :chemotherapydateinitiation
    add_column :journals, :chemotherapydateinitiation_day, :integer
    add_column :journals, :chemotherapydateinitiation_month, :integer
    add_column :journals, :chemotherapydateinitiation_year, :integer
    remove_column :journals, :chemotherapydatecompletion
    add_column :journals, :chemotherapydatecompletion_day, :integer
    add_column :journals, :chemotherapydatecompletion_month, :integer
    add_column :journals, :chemotherapydatecompletion_year, :integer
    remove_column :journals, :chemotherapyinsertiondatecvc
    add_column :journals, :chemotherapyinsertiondatecvc_day, :integer
    add_column :journals, :chemotherapyinsertiondatecvc_month, :integer
    add_column :journals, :chemotherapyinsertiondatecvc_year, :integer
    remove_column :journals, :chemotherapypermanentremovaldate
    add_column :journals, :chemotherapypermanentremovaldate_day, :integer
    add_column :journals, :chemotherapypermanentremovaldate_month, :integer
    add_column :journals, :chemotherapypermanentremovaldate_year, :integer
  end

  def down
  end
end
