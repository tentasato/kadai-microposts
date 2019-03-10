class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  validates :user_id, presence: true
  validates :micropost_id, presence: true
  validates_uniqueness_of :micropost_id, scope: :user_id
end
