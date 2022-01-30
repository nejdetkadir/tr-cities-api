# frozen_string_literal: true

require "test_helper"

class TownsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @city = create(:city)
  end

  test "should return all towns of city" do
    get city_towns_url(@city)

    assert_response :success
  end

  test "should return towns with by searching of city" do
    get search_city_towns_url(@city)

    assert_response :success
  end
end
