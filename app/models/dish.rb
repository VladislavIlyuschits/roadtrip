# frozen_string_literal: true

class Dish < ApplicationRecord
  belongs_to :event
  has_one_attached :image
end
