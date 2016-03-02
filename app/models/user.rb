class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name ,		presence: true
  validates :last_name ,		presence: true
  validates :contact_number, 	presence: true, length: {in: 7..11}, numericality: {greater_than_or_equal_to: 0}
  
end
