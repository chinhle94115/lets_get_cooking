class RecipesController < ApplicationController

    def favorite
      type = params[:type]
      if type == "favorite"
        current_user.favorites << @recipe
        redirect_to favorite_recipes_path, notice: 'You favorited #{@recipe.name}'

      elsif type == "unfavorite"
        current_user.favorites.delete(@recipe)
        redirect_to favorite_recipes_path, notice: 'Unfavorited #{@recipe.name}'

      else
        # Type missing, nothing happens
        redirect_to recipes_path, notice: 'Nothing happened.'
      end
    end

    def new
    end

    def index
    end

    def show
    end

    def create
      @recipes = Recipe.get_recipes(params)
      # redirect_to recipes_path
    end

    def destroy

        @favorite = FavoriteRecipe.find(params[:id])
        @favorite.destroy

        redirect_to favorite_recipes_path

      end
      
    def ingredient_list

    end

  end
