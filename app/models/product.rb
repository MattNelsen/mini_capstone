class Product < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: { in: 3..75 }
  validates :image_url, presence: true

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
