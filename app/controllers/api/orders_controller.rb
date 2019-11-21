class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: [:current_user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: [:subtotal],
      tax: [:tax],
      total: [:total],
    )
    @order.save
    render "orders.json.jb"
  end
end
