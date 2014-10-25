class MovementsController < ApplicationController

  def show
    @movements = Movement.latest5
    @records = Record.all
  end

  def create
    Movement.create!({ user_id: params[:user_id] })
    render nothing: true
  end

end
