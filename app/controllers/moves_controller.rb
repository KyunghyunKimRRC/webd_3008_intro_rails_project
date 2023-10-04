class MovesController < ApplicationController
  def index
    @moves = Move.all
  end

  def show
    @move = Move.find(params[:id])
    @type = Type.find(@move.type_id)
  end
end
