class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    render "index.html.erb"
  end
end
