# frozen_string_literal: true

class CreateDistricts < ActiveRecord::Migration[7.0]
  def change
    create_table :districts do |t|
      t.references :town, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps

      t.index %i[town_id name], unique: true
    end
  end
end
