class FavoriteRecipesController < ApplicationController


  def index
    @favorites = FavoriteRecipe.all
  end

  def new
    @favorite = FavoriteRecipe.new(params)
  end

  def create
    @favorite = FavoriteRecipe.create(title: params[:title], source_url: params[:source_url], image: params[:image])
    redirect_to favorite_recipes_path
  end

end
