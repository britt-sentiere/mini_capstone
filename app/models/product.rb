class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :product_categories
  has_many :categories, through: :product_categories

  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { maximum: 500, minimum: 10  } # { in: 10..500 } could also work
  validates :description, presence: true

  

  def is_discounted?
    price < 3
  end 

  def category_names
    categories.map { |category| category.name }
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end 
end
