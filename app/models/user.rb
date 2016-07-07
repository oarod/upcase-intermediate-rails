class User < ActiveRecord::Base
  has_many :followee_relationships,
    foreign_key: :follower_id,
    class_name: 'Follow'
  has_many :followees, through: :followee_relationships
  has_many :follower_relationships,
    foreign_key: :followee_id,
    class_name: 'Follow'
  has_many :followers, through: :follower_relationships
  has_many :shouts

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
