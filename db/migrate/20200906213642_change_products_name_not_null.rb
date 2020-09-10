class ChangeProductsNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :name, false
  end
end
