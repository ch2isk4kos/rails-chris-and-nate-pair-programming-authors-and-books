class Book < ApplicationRecord
  has_many :collabs
  has_many :authors, through: :collabs
end
