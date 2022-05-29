class User < ApplicationRecord
  has_many :posts

  validates :name, presence: true, uniqueness: true, length: { in: 1..20 }
  validates :password, presence: true, length: { in: 8..32 }
  validates :email, presence: true, uniqueness: true, format: { with: /.*@.*/ }
end
