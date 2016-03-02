class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.references :category, index: true, foreign_key: true
      t.integer :stock

      t.timestamps null: false
    end
  end
end
