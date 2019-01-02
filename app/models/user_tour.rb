# frozen_string_literal: true

class UserTour < ApplicationRecord
  belongs_to :user
  belongs_to :tour
end
