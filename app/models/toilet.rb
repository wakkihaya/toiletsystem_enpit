class Toilet < ApplicationRecord
  validates :name, presence: true
  validates :comment, length: {minimum: 1, maximum: 30}
end
