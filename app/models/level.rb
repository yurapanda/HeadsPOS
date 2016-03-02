class Level < ActiveRecord::Base
	validates :number ,		uniqueness: true, 	presence: true, :numericality => { :greater_than => 0, :less_than_or_equal_to => 3 }

end
