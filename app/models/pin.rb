class Pin < ApplicationRecord
  belongs_to :game
  belongs_to :board
end
