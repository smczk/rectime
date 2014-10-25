class RecordsController < ApplicationController

  def show
    @records = Record.all
  end

end
