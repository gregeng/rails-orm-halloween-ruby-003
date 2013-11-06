class BucketCandy < ActiveRecord::Base
  belongs_to :candy
  belongs_to :bucket

end
