# frozen_string_literal: true

class CreateTowns < ActiveRecord::Migration[7.0]
  def change
    create_table :towns do |t|
      t.references :city, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps

      t.index %i[city_id name], unique: true
    end
  end
end
