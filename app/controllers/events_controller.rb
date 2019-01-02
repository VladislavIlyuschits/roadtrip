# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    # @events = Event.where(tour_id: params[:tour_id])
    if params[:tour_id]
      @events = Event.where(tour_id: params[:tour_id])
    else params[:id]
      @events = Event.where(id: params[:id]).first.tour.events
    end
  end
end
