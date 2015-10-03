class IngredientsController < ApplicationController

  before_action :authenticate_user!
  
  def new
    @ingredient = Ingredient.new
  end

  def index
    @ingredients = Ingredient.all
    # binding.pry
  end

  def edit
    @ingredient = get_ingredient
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    #@recipes = Recipe.get_recipes(params)

    redirect_to new_ingredient_path
  end

  def update
    @ingredient = get_ingredient
    if @ingredient.update(ingredient_params)
      redirect_to ingredients_path(@ingredients)
    else
      render 'edit'
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    redirect_to ingredients_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  def get_ingredient
    Ingredient.find(params[:id])
  end

end
