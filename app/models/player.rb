class Player < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true
  validates :number, presence: true
end
