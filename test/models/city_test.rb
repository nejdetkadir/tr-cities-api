# frozen_string_literal: true

require "test_helper"
require 'shoulda/matchers'

class CityTest < ActiveSupport::TestCase
  test "have a valid factory" do
    assert create(:city).persisted?
  end
end
