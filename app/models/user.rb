class User < ApplicationRecord
  has_many :messages

  validates :username, uniqueness: true, length: { maximum: 20}
end
