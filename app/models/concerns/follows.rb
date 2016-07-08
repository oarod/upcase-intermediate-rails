module Follows
  extend ActiveSupport::Concern

  included do
    has_many :followee_relationships,
      foreign_key: :follower_id,
      class_name: 'Follow'
    has_many :followees, through: :followee_relationships
    has_many :follower_relationships,
      foreign_key: :followee_id,
      class_name: 'Follow'
    has_many :followers, through: :follower_relationships
  end

  def follow(user)
    followees << user
  end

  def follows?(user)
    followee_ids.include?(user.id)
  end

  def unfollow(user)
    followees.delete(user)
  end
end
