class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 1..40 }
  validates :link, presence: true, if: -> { body.blank? }
  validates :body, presence: true, if: -> { link.blank? }
  validates :user_id, presence: true
end
