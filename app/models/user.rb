class User < ApplicationRecord
  has_many :members, dependent: :destroy
  has_many :rooms, through: :members, dependent: :destroy
  has_many :posts, through: :members, dependent: :destroy

  validates :name, :email, :password, presence: true
  validates :name, :email, uniqueness: true
  validates :name, format: { with: /\A[a-zA-Z][a-zA-Z0-9]+\z/,
    message: "must start with a letter and only contain letters and numbers" }

 attr_accessor :password, :password_confirmation

  # attachment :photo
end
