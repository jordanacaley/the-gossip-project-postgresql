class Comment < ApplicationRecord
  validates :content,
    presence: true,
    length: { in: 3..140 }
  belongs_to :user
  belongs_to :gossip
  has_many :likes
end
