class FollowsController < ApplicationController
  before_action :find_user, only: [:create, :destroy]

  def create
    current_user.follow(@user)
    redirect_to @user, notice: 'Now following user.'
  end

  def destroy
    current_user.unfollow(@user)
    redirect_to @user, notice: 'No longer following user.'
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
