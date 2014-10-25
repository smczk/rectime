class RecordsController < ApplicationController

  def show
    @records = Record.all
  end

  def create
    Record.create!({ user_id: params[:user_id], point_id: params[:point_id], comment: params[:comment] })
    render nothing: true
  end

end
