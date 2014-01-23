class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :show]

  def show
  end

  def index
    @recipes = Recipe.order("created_at DESC").paginate(page: params[:page], per_page: 1)
    @all_recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path , notice: 'Recipe was successfully created.'

    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipes_path, notice: "Recipe updated"
    else
      render action: 'edit'
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path, notice: "Recipe Deleted"
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:dish, :html)
  end
end
