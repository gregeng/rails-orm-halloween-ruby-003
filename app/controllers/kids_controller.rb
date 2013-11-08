class KidsController < ApplicationController

  def create
    k = Kid.find_or_create_by(kid_params)
    k.bucket = Bucket.new
    k.save
    session[:user_id] = k.id
    redirect_to(houses_path)
  end


# I want a link somewhere on the index of house page that links to Trick or Treat.
# When I click on that link, it should fire off a method that gets the kid's bucket.
# then that bucket should receive a random candy object that the house contains.
# The trick or treat method should then have something like this ||= []
# so that if there is no candies= yet, itll make an empty array
# then it will << the candy object into that kids bucket.

# the links should probably straight up call the update route of the buckets controller.
# Give candy can be a class method. first find the house from the link.

# probably in the house model
def self.give_candy
  house = House.find(params[:id])
  self.candies.shuffle.first
end

def trick_or_treat(house)
  self.candies ||= []
  self.candies << @house.give_candy
end

# I'll probably need some sort of show page to show the kid whats currently in his/her bucket from the index page


private
  def kid_params
    params.require(:kid).permit(:name, :age)
  end

end
