class Candy < ActiveRecord::Base
  has_many :bucket_candies
  has_many :house_candies
  has_many :buckets, :through => :bucket_candies
  has_many :houses, :through => :house_candies

end
