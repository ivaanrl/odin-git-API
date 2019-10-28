class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: {in: 4..100}
  validates :link, presence: true
end
