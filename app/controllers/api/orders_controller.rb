class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: [:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: [:subtotal],
      tax: [:tax],
      total: [:total],
    )
    render "orders.json.jb"
  end
end
