class ListsController < ApplicationController
  before_action :set_board

  def index
    @lists = @board.lists

    render json: @lists
  end

  # Agregamos este método
  def set_board
    @board = Board.find(params[:board_id])
  end
end
