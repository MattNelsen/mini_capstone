class FixId < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :supplier_id, :string
    add_column :products, :supplier_id, :integer
  end
end
