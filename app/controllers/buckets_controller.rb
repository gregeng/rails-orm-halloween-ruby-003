class BucketsController < ApplicationController

  def show
    @bucket = Bucket.find(params[:id])
  end

  def update
    candy_object = House.give_candy(params[:house_id])
    @bucket = Bucket.find(params[:id])
    @bucket.trick_or_treat(candy_object)
    @bucket.save

    redirect_to (@bucket)
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

# I'll probably need some sort of show page to show the kid whats currently in his/her bucket from the index page


end
