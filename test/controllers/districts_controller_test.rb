# frozen_string_literal: true

require "test_helper"

class DistrictsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @district = create(:district)
  end

  test "should return all districts of town" do
    get city_town_districts_url(@district.town.city, @district.town)

    assert_response :success
  end

  test "should return district by id" do
    district = create(:district)

    get district_url(district)

    assert_response :success
  end

  test "should return districts with by searching of town" do
    get search_city_town_districts_url(@district.town.city, @district.town)

    assert_response :success
  end
end
