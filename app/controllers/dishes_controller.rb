class DishesController < ApplicationController
  def index
    @dishes = Dish.where(event_id: params[:id])
  end
end
