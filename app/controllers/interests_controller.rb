# frozen_string_literal: true

class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end

  def add_interest
    current_user.interests << Interest.where(id: params[:id]).first
    redirect_to tours_path(interest_id: params[:id])
  end
end
