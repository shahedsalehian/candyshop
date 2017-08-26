class Shop < ApplicationRecord
  has_many :shelves, :dependent => :delete_all
  has_many :candies, :dependent => :delete_all
end
