class Post < ApplicationRecord
  belongs_to :member
  has_one :user, through: :member
  has_one :room, through: :member

  validates :post_content, :member_id, presence: true 
end
