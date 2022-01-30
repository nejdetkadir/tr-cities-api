# frozen_string_literal: true

class Quarter < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :district_id }

  # associations
  belongs_to :district
end
