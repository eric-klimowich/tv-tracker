class ShowsController < ApplicationController
  before_action :find_show, only: [:show, :edit, :update, :destroy]

  def index
    @shows = Show.all
  end

  def show
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.create(show_params)
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
    params.require(:show).permit(:title, :seasons, :status, :lead_actor, :genre, :description)
  end

  def find_show
    @show = Show.find_by(id: params[:id])
  end

end
