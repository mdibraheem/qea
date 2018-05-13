class EventsController < ApplicationController
  def show
    @event = Event.find params[:id]
  end

  def index
    @events = Event.ordered.all
  end
end
