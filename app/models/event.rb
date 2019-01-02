# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :tour
  has_many :dishes
  has_one_attached :image
end
