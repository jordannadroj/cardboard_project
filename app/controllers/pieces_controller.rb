class PiecesController < ApplicationController
  def show
    @piece = Piece.find(params[:id])
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)

    if @piece.save
      redirect_to piece_path(@piece)
    else
      render :new
    end
  end

  private

  def piece_params
    params.require(:piece).permit(:title, :description, :artist_id, :event_id, :picture)
  end
end
