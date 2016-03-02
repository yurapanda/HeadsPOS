class Customer < ActiveRecord::Base
  belongs_to :city
  belongs_to :customer_status

  validates :first_name, presence: true, length: {minimum: 2}
end
