class Product < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: { in: 3..75 }

  belongs_to :supplier

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :orders, through: :carted_products

  def is_discounted?
    if price < 10
      return "true"
    else
      return "false"
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
