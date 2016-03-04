class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :sku
      t.string :name
      t.decimal :price
      t.decimal :cost_price
      t.references :level, index: true, foreign_key: true
      t.references :item_type, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.integer :stock_amount
      t.integer :amount_sold, :default => 0
      t.text :description

      t.timestamps null: false
    end
  end
end
