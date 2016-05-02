class VideosController < ApplicationController
  before_action :find_video, only: [:show, :update, :destroy]

  def index
    @videos = Video.all
  end

  def show
    #see find video
  end

  def create
    @video = Video.new( title: params[:title], description: params[:description], thumbnail: params[:thumbnail], link: params[:link], date: params[:date], live: params[:live] )
    if @video.save
      render 'show', formats: [:json], handlers: [:jbuilder], status: 201
    else
      render json: {error: "Error when creating video DB entry"}, status: 422
    end
  end

  # Unsure if we'll actually need an update route for anything, leaving it here for now.
  # def update
  #   if @video.update_attributes( title: params[:title], description: params[:description], thumbnail: params[:thumbnail], link: params[:link], date: params[:date] live: params[:live] )
  #     render 'show', formats: [:json], handlers: [:jbuilder], status: 200
  #   else
  #     render json: {error: "Error when updating video DB entry"}, status: 500
  #   end
  # end

  def destroy
    if @video.destroy
      render json: {message: "Video DB entry deleted"}, status: 200
    else
      render json: {error: "Error when deleting video DB entry"}, status: 422
    end
  end

  private
  def find_video
    @video = Video.find(params[:id])
  end

end
