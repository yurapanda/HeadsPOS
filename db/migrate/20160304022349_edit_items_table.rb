class EditItemsTable < ActiveRecord::Migration
  
  def change
  	change_column :items, :price, :decimal, :precision => 8, :scale => 2
   	change_column :items, :cost_price,  :decimal, :precision => 8, :scale => 2
  end
end
