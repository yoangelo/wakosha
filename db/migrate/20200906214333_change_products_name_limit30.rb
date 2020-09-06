class ChangeProductsNameLimit30 < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :name, :string, limit: 30
  end
  def down
    change_column :products, :name, :string
  end
end
