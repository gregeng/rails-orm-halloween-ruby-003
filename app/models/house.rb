class House < ActiveRecord::Base
  has_many :house_candies
  has_many :candies, :through => :house_candies
end
