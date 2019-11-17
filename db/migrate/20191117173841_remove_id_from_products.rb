class RemoveIdFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :ID, :integer
  end
end
