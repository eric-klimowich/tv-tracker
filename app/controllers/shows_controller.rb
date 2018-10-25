class ShowsController < ApplicationController
  before_action :find_show, only: [:show, :edit, :update, :destroy]

  def index
    @shows = Show.search(params[:search])
  end

  def show
    # @reviews = []
    # if Review.find_by(show_id: @show.id)
    #   @reviews << Review.find_by(show_id: @show.id)
    # end
    @reviews = Review.search(params[:search])
    @netflix = Platform.find(1)
    @prime = Platform.find(2)
    @hbo = Platform.find(3)
    @hulu = Platform.find(4)
    session[:show_id] = @show.id
  end

  def new
    @show = Show.new
    @genres = ["Comedy", "Drama", "Documentary", "Reality", "Sci-fi", "Horror", "Action & Adventure", "Game Show"]
  end

  def create
    @show = Show.create(show_params)
    if @show.netflix
      ShowPlatform.create(show_id: @show.id, platform_id: 1)
    end
    if @show.prime
      ShowPlatform.create(show_id: @show.id, platform_id: 2)
    end
    if @show.hbo
      ShowPlatform.create(show_id: @show.id, platform_id: 3)
    end
    if @show.hulu
      ShowPlatform.create(show_id: @show.id, platform_id: 4)
    end
    redirect_to show_path(@show)
  end

  def edit
  end

  def update
    @show.update(show_params)
    redirect_to show_path(@show)
  end

  def destroy
    @show.destroy
    redirect_to shows_path
  end


  private

  def show_params
    params.require(:show).permit(:title, :seasons, :status, :lead_actor, :genre, :description, :search, :netflix, :prime, :hbo, :hulu, :search)
  end

  def find_show
    @show = Show.find_by(id: params[:id])
  end

end
