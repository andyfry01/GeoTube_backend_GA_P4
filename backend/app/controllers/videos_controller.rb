class VideosController < ApplicationController
  # before_action :find_video, only: [:update, :show, :destroy]

  def index
    @videos = Video.all
  end

end
