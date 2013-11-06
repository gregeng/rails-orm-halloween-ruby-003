require 'spec_helper'

describe Bucket do
  it "belongs to a kid" do
    kid = Kid.create(:name => "Greg")
    pumpkin_bucket = Bucket.create
    kid.bucket = pumpkin_bucket

    expect(Bucket.first).to eq(kid.bucket)
    expect(kid.bucket.nil?).to eq(false)
  end

  it "can contain candy" do
    pending
    # think of how you'll implement this. You won't directly relate bucket to candy (join table),
    # you'll need to use what is called a many_to_many relationship. Read the Sequel
    # docs for more information
  end

  it "has a count of its candy"

end



