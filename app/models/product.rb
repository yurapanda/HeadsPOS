class Product < ActiveRecord::Base
  belongs_to :category

  validates :name ,					presence: true
  validates :price, 		 		presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :category_id,			presence: true
  validates :stock,					presence: true
end
