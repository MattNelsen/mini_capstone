class ApplicationController < ActionController::Base
  def all_products_method
    @products = Product.all
    render "products.json.jb"
  end
end
