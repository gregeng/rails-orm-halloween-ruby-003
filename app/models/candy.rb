class Candy < ActiveRecord::Base
  has_many :bucket_candies
  has_many :house_candies
  has_many :buckets, :through => :bucket_candies
  has_many :houses, :through => :house_candies

  def self.find_candies(candy_ids)
    if !candy_ids.nil?
      candy_ids.collect do |candy_id|
          Candy.find(candy_id)
       end
    else
      []
    end
  end

end
