class CreateInternalRadioTherapyRadioactiveAgents < ActiveRecord::Migration
  def change
    create_table :internal_radio_therapy_radioactive_agents do |t|
      t.string :text

      t.timestamps
    end
  end
end
