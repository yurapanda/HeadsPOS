class CustomerStatus < ActiveRecord::Base

	validates :name,		presence: true
end
