class Board < ApplicationRecord
  # associations
  has_many :games
  has_many :pins, dependent: :destroy
  has_one_attached :photo

  # validations
  validates :name, presence: true
end
