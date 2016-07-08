class Timeline
  include ActiveModel::Model

  def initialize(user)
    @user = user
  end

  def shouts
    Shout.where(user_id: shout_user_ids)
  end

  private

  def shout_user_ids
    @user.followee_ids << @user.id
  end
end
