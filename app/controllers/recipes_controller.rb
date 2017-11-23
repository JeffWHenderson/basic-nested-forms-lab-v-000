class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    raise recipe_params.inspect
  end

  private

  def recipe_params
    perams.require(:recipe).permit(:title, ingredients_attributes => [:name, :quantity])
  end
end
