class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :title
      t.string :ingredient
      t.string :source_url
      t.string :image
      t.string :publisher
      t.string :provider_id

      t.timestamps null: false
    end
  end
end
