class RenameDescriprionColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :descriprion, :description
  end
end
