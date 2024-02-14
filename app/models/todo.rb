class Todo < ApplicationRecord
  validates :todo, presence: true
  validates :todo, length: { maximum: 50 }
end