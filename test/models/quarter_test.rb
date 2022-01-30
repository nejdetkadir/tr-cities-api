# frozen_string_literal: true

require "test_helper"

class QuarterTest < ActiveSupport::TestCase
  test "have a valid factory" do
    assert create(:quarter).persisted?
  end
end
