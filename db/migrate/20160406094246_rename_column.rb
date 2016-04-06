class RenameColumn < ActiveRecord::Migration
  def change
  rename_column :posts, :category_id, :categorie_id
  end
end
