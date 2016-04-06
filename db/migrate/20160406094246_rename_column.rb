class RenameColumn < ActiveRecord::Migration
  def change
  rename_column :posts, :categorie_id,:category_id
  end
end
	