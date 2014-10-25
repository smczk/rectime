class RecordsController < ApplicationController

  def show
    @records = Record.all
  end

  def create
    Record.create!({ movement_id: params[:movement_id], point_id: params[:point_id], comment: params[:comment] })
    render nothing: true
  end

end
