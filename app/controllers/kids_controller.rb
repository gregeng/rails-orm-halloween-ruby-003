class KidsController < ApplicationController

  def create
    # raise params.inspect
    k = Kid.find_or_create_by(:name => params[:kid][:name])
    k.bucket = Bucket.new
    k.save
    session[:user_id] = k.id

    redirect_to(houses_path)
  end

private
  def kid_params
    params.require(:kid).permit(:name, :age)
  end

end
