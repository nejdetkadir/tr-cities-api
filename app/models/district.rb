# frozen_string_literal: true

class District < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :town_id }

  # associations
  belongs_to :town
end
