require 'spec_helper'

describe Bucket do
  it "belongs to a kid"

  it "can contain candy" do
    pending
    # think of how you'll implement this. You won't directly relate bucket to candy (join table),
    # you'll need to use what is called a many_to_many relationship. Read the Sequel
    # docs for more information

    # candies have many buckets
    # buckets_candies belong_to candies
    # buckets_candies belong_to buckets
    # candies have many buckets through buckets_candies
    # buckets have many candies through buckets_candies

    # candies have many buckets
    # houses_candies belong_to candies
    # houses_candies belong_to houses
    # candies have many houses through houses_candies
    # houses have many candies through houses_candies

  end

  it "has a count of its candy"

end



