# frozen_string_literal: true

class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.string :alpha_2_code, null: false

      t.timestamps
    end

    add_index :cities, :name, unique: true
    add_index :cities, :alpha_2_code, unique: true
  end
end
