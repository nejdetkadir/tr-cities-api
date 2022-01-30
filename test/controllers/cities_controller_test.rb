# frozen_string_literal: true

require "test_helper"

class CitiesControllerTest < ActionDispatch::IntegrationTest
  test "should return all cities" do
    get cities_url

    assert_response :success
  end

  test "should return city with by id" do
    city = create(:city)

    get city_url(city)

    assert_response :success
  end

  test "should return cities with by searching" do
    get(search_cities_url)

    assert_response :success
  end
end
