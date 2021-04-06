class EventsController < ApplicationController

def show
  @pieces = Piece.all
end


end
