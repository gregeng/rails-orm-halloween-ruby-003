class Bucket < ActiveRecord::Base
  belongs_to :kid
  has_many :bucket_candies
  has_many :candies, :through => :bucket_candies

  def trick_or_treat(candy_object)
    self.candies ||= []
    self.candies << candy_object
  end

end
