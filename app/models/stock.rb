class Stock < ApplicationRecord
  belongs_to :shop
  has_many :products
end
