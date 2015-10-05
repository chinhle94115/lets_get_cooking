class FavoriteRecipesController < ApplicationController


  def index
    @favorites = FavoriteRecipe.all
  end

  def new
    @favorite = FavoriteRecipe.new(params)
  end

  def edit
    @favorite = get_favorite
  end

  def create
    @favorite = FavoriteRecipe.create(title: params[:title], source_url: params[:source_url], image: params[:image])
    redirect_to favorite_recipes_path
  end

  def destroy

    @favorite = FavoriteRecipe.find(params[:id])
    @favorite.destroy

    redirect_to favorite_recipes_path

  end
  private

  def get_favorite
    FavoriteRecipe.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:title, :source_url, :image)
  end


end
