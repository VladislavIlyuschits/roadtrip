# frozen_string_literal: true

class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string     :name
      t.references :event

      t.timestamps
    end
  end
end
