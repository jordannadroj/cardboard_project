class PiecesController < ApplicationController
  before_action :find_event

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    @piece.event = @event

    if @piece.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def piece_params
    params.require(:piece).permit(:title, :description, :artist_id, :event_id)
  end

  def find_event
    @event = Event.find(params[:event_id])
  end
end
