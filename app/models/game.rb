class Game < ApplicationRecord
  # associations
  has_many :boards, trough: :pins, dependent: :destroy
  has_many :pins
  # validations
  validates :name, presence: true, uniqueness: true
  validates :goal, presence: true
  validates :instruction, presence: true
end
