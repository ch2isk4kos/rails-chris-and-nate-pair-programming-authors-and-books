class Author < ApplicationRecord
  has_many :collabs
  has_many :books, through: :collabs
end
