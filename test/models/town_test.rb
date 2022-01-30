# frozen_string_literal: true

require "test_helper"

class TownTest < ActiveSupport::TestCase
  test "have a valid factory" do
    assert create(:town).persisted?
  end
end
