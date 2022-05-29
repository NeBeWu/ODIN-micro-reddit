class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { in: 1..40 }
  validates :link, presence: true, if: -> { body.blank? }
  validates :body, presence: true, if: -> { link.blank? }
end
