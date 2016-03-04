class Item < ActiveRecord::Base
  belongs_to :level
  belongs_to :item_type
  belongs_to :category

  validates :sku, 					presence: true, length: {minimum: 2, maximum: 20}
  validates :name ,					presence: true
  validates :price, 		 		presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :category_id,			presence: true
  validates :stock_amount,			presence: true
  validates :category_id,			presence: true
  validates :item_type_id,			presence: true
  validates :cost_price, 			numericality: {greater_than_or_equal_to: 1}
  validates :amount_sold,			presence: true


end
