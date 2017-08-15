class Servicemen < ActiveRecord::Base
  
  validates :name, presence: true, length: {minimum: 1, maximum:30}
  validates :description, presence: true, length: {minimum: 10, maximum:300}
  validates :rating, presence: true,numericality: { less_than_or_equal_to: 5}
  validates :rating_sum, presence: true, numericality: { only_integer: true }
  validates :no_services, presence: true, numericality: { only_integer: true }
  validates :phone_num, presence: true, length: {minimum: 10, maximum:15},  numericality: { only_integer: true }
  validates :address, presence: true, length: {minimum: 1, maximum:300}
 
end