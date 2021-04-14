class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    render "index.html.erb"
  end

  def show
    @boat = Boat.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @boat = Boat.create(
      title = params[:title],
      capacity = params[:capacity],
      color = params[:color],
      year_christened = params[:year_christened],
      price = params[:price],
    )
    @boat.save

    redirect_to "/boats/#{@boat.id}"
  end

  
end
