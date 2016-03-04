class DropLevelsTable < ActiveRecord::Migration
  def change
  	drop_table :levels
  end
end
