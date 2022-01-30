# frozen_string_literal: true

class City < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :alpha_2_code, presence: true, uniqueness: { case_sensitive: false }
end
