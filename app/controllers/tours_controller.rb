# frozen_string_literal: true

class ToursController < ApplicationController
  def index
    if params[:interest_id]
      @tours = Tour.where(interest_id: params[:interest_id])
    elsif params[:id]
      @tours = Tour.where(id: params[:id]).first.interest.tours
    else
      @tours = Tour.all
    end
    # @tours = params[:interest_id] ? Tour.where(interest_id: params[:interest_id]) : Tour.all
  end

  def add_tour
    current_user.tours << Tour.where(id: params[:id]).first
    redirect_to events_path(tour_id: params[:id])
  end
end
