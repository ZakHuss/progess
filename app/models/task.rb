class Task < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { minimum: 5, maximum: 200 }
end