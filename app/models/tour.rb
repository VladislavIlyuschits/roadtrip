# frozen_string_literal: true

class Tour < ApplicationRecord
  belongs_to :interest
  has_many :events
  has_many :user_tours
  has_many :users, through: :user_tours
  has_one_attached :image
end
