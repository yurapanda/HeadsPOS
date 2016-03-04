class City < ActiveRecord::Base


	validates :name, presence: true, length: {minimum: 2},		uniqueness: true

end
