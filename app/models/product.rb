class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :sku, presence: true, uniqueness: { case_sensitive: false }
end
