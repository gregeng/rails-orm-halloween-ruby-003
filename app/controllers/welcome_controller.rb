class WelcomeController < ApplicationController

  def index
    @kid = Kid.new
  end

  def start
    # the kid will be created here after getting the stuff from index. name age. bucket is assigned.
  end


end
