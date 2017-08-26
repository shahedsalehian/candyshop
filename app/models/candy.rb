class Candy < ApplicationRecord
  belongs_to :shelf, optional: true
  belongs_to :shop
end
