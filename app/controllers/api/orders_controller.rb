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
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    @order.save
    carted_products.each do |carted_product|
      carted_product.status = "purchased"
      carted_product.order.id = order.id
      carted_product.save
  end
  render "show.json.jb"
end
