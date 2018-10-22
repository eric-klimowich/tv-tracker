class PlatformsController < ApplicationController

  def index
    @platforms = Platform.all
  end

  def show
    @platform = Platform.find_by(id: params[:id])
  end

end
