class PrivateMessage < ApplicationRecord
  validates :content,
    presence: true,
    length: { in: 3..140 }
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
end
