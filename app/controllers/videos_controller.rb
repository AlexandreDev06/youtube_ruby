class VideosController < ApplicationController
  before_action :set_videos, only: [:edit, :update, :destroy]

  def index
    @videos = Video.order :category
  end

  def new
    @video = Video.new
    @categories = Category.all
  end

  def create
    @video = Video.new values
    if @video.save
      redirect_to videos_index_path
    else
      render :new
    end
  end

  def edit
    @categories = Category.all
  end

  def update
    if @video.update values
      redirect_to videos_index_path
    else
      render :edit
    end
  end

  def destroy
    @video = if @video.destroy
        redirect_to videos_index_path
      else
        render :index
      end
  end

  private

  def values
    params.require(:video).permit!
  end

  def set_videos
    @video = Video.find(params[:id])
  end
end
