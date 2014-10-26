class PointsController < ApplicationController

  def show
    @points = Point.all
  end

  def create
    Point.create!({ name: params[:name] })
    render nothing: true
  end

end
