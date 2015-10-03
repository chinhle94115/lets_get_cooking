class RecipesController < ApplicationController

    def favorite
      type = params[:type]
      if type == "favorite"
        current_user.favorites << @recipe
        redirect_to :back, notice: 'You favorited #{@recipe.name}'

      elsif type == "unfavorite"
        current_user.favorites.delete(@recipe)
        redirect_to :back, notice: 'Unfavorited #{@recipe.name}'

      else
        # Type missing, nothing happens
        redirect_to :back, notice: 'Nothing happened.'
      end
    end

    def new
    end

    def index
      @recipes = Recipe.all
    end

    def show
    end

    def create
      @recipes = Recipe.get_recipes(params)
      redirect_to recipes_path
    end

    def ingredient_list

    end

  end
