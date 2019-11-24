class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    # product = Product.find_by(id: params[:product_id])
    # price = product.price
    # calculated_subtotal = params[:quantity].to_i * price
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_subtotal + calculated_tax
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0
    @carted_products = CartedProduct.where(status: "carted")

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    @order.save
    render "show.json.jb"
  end
end
