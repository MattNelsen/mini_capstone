class AddIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :ID, :integer
  end
end
