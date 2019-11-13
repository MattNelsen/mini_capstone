class Product < ApplicationRecord
  validates :price, presence: true
  vslidates :price, numericality: { greater_than: 0 }
  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: { in: 3..75 }
  validates :image, presence: true

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

  p tax(price)
end
