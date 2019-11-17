class RemoveIdColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :id, :string
  end
end
