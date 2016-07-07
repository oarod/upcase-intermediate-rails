class FollowsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    current_user.followees << user
    redirect_to user
  end
end
