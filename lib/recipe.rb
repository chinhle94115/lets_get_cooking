module Recipe
  def self.get_recipes(params)
    ingredients = Ingredient.ingredient_list(params)
    api_url = "food2fork.com/api/search.json"
    api_key = "4fdc8cf04236d404b86477fc16b9cf50"
    full_url = "#{api_url}?q=#{ingredients}&key=#{api_key}"
    response = Typhoeus.get(full_url)
    JSON.parse(response.body)["recipes"]
  end
end
