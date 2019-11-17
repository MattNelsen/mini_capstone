class AddidToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :id, :integer
  end
end
