class Shelf < ApplicationRecord
  belongs_to :shop
  has_many :candies, :dependent => :delete_all
end
