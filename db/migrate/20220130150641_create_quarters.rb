# frozen_string_literal: true

class CreateQuarters < ActiveRecord::Migration[7.0]
  def change
    create_table :quarters do |t|
      t.references :district, null: false, foreign_key: true
      t.string :name

      t.timestamps

      t.index %i[district_id name], unique: true
    end
  end
end
