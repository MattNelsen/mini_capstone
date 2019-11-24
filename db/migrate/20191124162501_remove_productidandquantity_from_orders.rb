class RemoveProductidandquantityFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :quantity, :orders
  end
end
