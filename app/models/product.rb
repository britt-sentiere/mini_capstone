class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { maximum: 500, minimum: 10  } # { in: 10..500 } could also work
  validates :description, presence: true
  validates :image_url, presence: true

  def is_discounted?
    price < 3
  end 

  def tax
    price * 0.09
  end

  def total
    price + tax
  end 
end
