class ApplicationController < ActionController::Base
  def all_products_method
    @products = Product.new
    render "products.json.jb"
  end
end
