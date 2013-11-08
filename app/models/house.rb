class House < ActiveRecord::Base
  has_many :house_candies
  has_many :candies, :through => :house_candies

  def self.give_candy(id)
    house = House.find(id)
    house.candies.shuffle.first
  end

end
