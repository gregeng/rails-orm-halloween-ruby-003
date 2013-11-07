class Bucket < ActiveRecord::Base
  belongs_to :kid
  has_many :bucket_candies
end
