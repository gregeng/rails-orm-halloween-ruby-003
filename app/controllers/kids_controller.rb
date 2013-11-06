class KidsController < ApplicationController

  def create
    k = Kid.create(kid_params)
    session[:user_id] = k.id
    redirect_to(houses_path)
  end


private
  def kid_params
    params.require(:kid).permit(:name, :age)
  end

end
