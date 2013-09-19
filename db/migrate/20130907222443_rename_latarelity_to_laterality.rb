class RenameLatarelityToLaterality < ActiveRecord::Migration
    def change
        rename_table :latarelity_rlbmus, :laterality_rlbmus
    end 
end
