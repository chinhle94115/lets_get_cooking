# # == Schema Information
# #
# # Table name: recipes
# #
# #  id          :integer          not null, primary key
# #  user_id     :integer
# #  title       :string
# #  ingredient  :string
# #  source_url  :string
# #  image       :string
# #  publisher   :string
# #  provider_id :string
# #  created_at  :datetime         not null
# #  updated_at  :datetime         not null
# #
#
# class Recipe < ActiveRecord::Base
#
#
#     belongs_to :user
#
#     has_many :favorite_recipes
#     has_many :favorited_by, through: :favorite_recipes, source: :user
#
#
#     validates_uniqueness_of :provider_id #no duplicate recipes from same provider
#
#
#     def self.get_recipes(params)
#       # Recipe.destroy_all
#       ingredients = Ingredient.ingredient_list(params)
#       api_url = "food2fork.com/api/search.json"
#       api_key = "4fdc8cf04236d404b86477fc16b9cf50"
#       full_url = "#{api_url}?q=#{ingredients}&key=#{api_key}"
#       response = Typhoeus.get(full_url)
#       JSON.parse(response.body)["recipes"]
#       # Recipe.add_recipes(recipes)
#     end
#
#   def self.add_recipes(recipes)
#     recipes.each do |recipe|
#       Recipe.find_or_create_by(provider_id: recipe["recipe_id"], title: recipe["title"], image: recipe["image_url"], publisher: recipe["publisher"], source_url: recipe["source_url"])
#     end
#   end
#
#   def provider
#   end
#
#   def provider_id
#   end
#
# end
