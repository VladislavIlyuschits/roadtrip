# frozen_string_literal: true

class CreateUserTours < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tours do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tour, index: true

      t.timestamps
    end
  end
end
