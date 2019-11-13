class AddColumnToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :InStockorOutofStock, :string
  end
end
