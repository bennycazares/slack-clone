class Member < ApplicationRecord
  belongs_to :room
  belongs_to :user

  has_many :posts, dependent: :destroy

  validates :room, :user, pressence: true
  validates :room_id, :uniqueness => {:scope=>:user_id}
end
