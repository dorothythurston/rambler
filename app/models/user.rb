class User < ActiveRecord::Base
  include Clearance::User

  has_many :rambles

  has_many :followed_user_relationships,
    foreign_key: :follower_id,
    class_name: "FollowingRelationship",
    dependent: :destroy
  has_many :followed_users, through: :followed_user_relationships

  has_many :follower_relationships,
    foreign_key: :followed_user_id,
    class_name: "FollowingRelationship",
    dependent: :destroy

  has_many :followers, through: :follower_relationships

  has_many :likes, dependent: :destroy
  has_many :liked_rambles, through: :likes, source: :likable, source_type: 'Ramble'

  def follow(user)
    follow = followed_user_relationships.create(followed_user: user)
  end

  def following?(user)
    followed_user_ids.include? user.id
  end

  def unfollow(user)
    followed_users.destroy user
  end

  def like(target)
    like = likes.create(likable: target)
  end

  def liked?(target)
    likes.exists?(likable: target)
  end

  def unlike(target)
    likes.find_by(likable: target).destroy
  end
end
