class HousesController < ApplicationController

  def index
    @kid = Kid.find(session[:user_id])
  end

end
