class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def first_product_method
    @product = Product.first
    render "first_product.json.jb"
  end

  def last_product_method
    @product = Product.last
    render "last_product.json.jb"
  end
end
