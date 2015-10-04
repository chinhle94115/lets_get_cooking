class AddColumnToFavoriteRecipe < ActiveRecord::Migration
  def change
    add_column :favorite_recipes, :title, :string
    add_column :favorite_recipes, :ingredient, :string
    add_column :favorite_recipes, :source_url, :string
    add_column :favorite_recipes, :image, :string
    add_column :favorite_recipes, :publisher, :string
    add_column :favorite_recipes, :provider_id, :string
  end
end
