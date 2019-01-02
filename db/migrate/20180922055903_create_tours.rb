# frozen_string_literal: true

class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string     :name, null: false
      t.datetime   :starts_at, null: false
      t.text       :description
      t.references :interest

      t.timestamps
    end
  end
end
