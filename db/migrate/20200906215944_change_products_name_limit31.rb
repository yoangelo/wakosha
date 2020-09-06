class ChangeProductsNameLimit31 < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :name, :string, limit: 31
  end
  def down
    change_column :products, :name, :string
  end
end
