class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new values
    if @category.save
      redirect_to categories_index_path
    else
      render :index
    end
  end

  def edit; end

  def update
    if @category.update values
      redirect_to videos_index_path
    else
      render :edit
    end
  end

  def destroy
    @category = if @category.destroy
        redirect_to categories_path
      else
        render :index
      end
  end

  private

  def values
    params.require(:category).permit!
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
