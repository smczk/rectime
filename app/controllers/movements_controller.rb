class MovementsController < ApplicationController

  def show
    @movements = Movement.joins(:user).where(user_id: current_user).includes(record: :point).reverse_order
  end

  def create
    Movement.create!({ user_id: params[:user_id] })
    render nothing: true
  end

end
