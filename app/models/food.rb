class Food < ApplicationRecord
  has_many :comments
  has_many :photos
end
