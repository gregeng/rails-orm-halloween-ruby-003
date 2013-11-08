class Bucket < ActiveRecord::Base
  belongs_to :kid
  has_many :bucket_candies
  has_many :candies, :through => :bucket_candies
end
