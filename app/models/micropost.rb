class Micropost < ActiveRecord::Base
  validates :user_id, presence: true
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  belongs_to :user

  def self.from_users_followed_by(user)
    followed_user_ids = user.followed_user_ids
    where("user_id IN (?) OR user_id = ?", followed_user_ids, user)
  end

end


