class Task < ApplicationRecord
  validates :name,         presence: true, length: { maximum: 200 }
  validates :is_completed, inclusion: { in: [true, false] }
end
