class User < ApplicationRecord
  has_many :posts
  has_many :commentaries
  validates :name, presence: true, length: {in: 3..20}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
              format: {with: VALID_EMAIL_REGEX },
              length: {maximum: 255}, uniqueness: true
end
