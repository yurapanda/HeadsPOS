class CreateCustomerStatuses < ActiveRecord::Migration
  def change
    create_table :customer_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
