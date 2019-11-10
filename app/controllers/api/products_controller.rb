class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    @products = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description],
    )

    @products.save
    render "show.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:input_name] || @product.name
    @product.price = params[:input_price] || @product.price
    @product.image_url = params[:input_image_url] || @product.image_url
    @product.description = params[:input_description] || @product.description
    @product.save
    render "show.json.jb"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "The product has been destoryed! :(" }
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
