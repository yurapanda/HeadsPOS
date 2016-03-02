class RenameLevelToNumber < ActiveRecord::Migration
  
  	def change
        rename_column :levels, :level, :number
    end
end
