class RenameDescriprionColumnToMembers < ActiveRecord::Migration[5.2]
  def change
    rename_column :members, :descriprion, :description
  end
end
