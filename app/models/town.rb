# frozen_string_literal: true

class Town < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :city_id }

  # associations
  belongs_to :city
end
