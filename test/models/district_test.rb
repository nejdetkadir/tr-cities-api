# frozen_string_literal: true

require "test_helper"

class DistrictTest < ActiveSupport::TestCase
  test "have a valid factory" do
    assert create(:district).persisted?
  end
end
