class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @pieces = Piece.where(event_id: @event)
  end
end
