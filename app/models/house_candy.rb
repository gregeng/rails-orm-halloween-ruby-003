class HouseCandy < ActiveRecord::Base
    belongs_to :candy
    belongs_to :house

end
