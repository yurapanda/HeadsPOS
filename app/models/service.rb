class Service < ActiveRecord::Base
  belongs_to :category
  belongs_to :gender
  belongs_to :level


  validates :name ,					presence: true
  validates :price, 		 		presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :category_id,			presence: true
  validates :stock,					presence: true
  validates :gender_id, 			presence: true
end
