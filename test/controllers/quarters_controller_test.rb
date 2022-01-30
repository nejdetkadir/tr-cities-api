# frozen_string_literal: true

require "test_helper"

class QuartersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @quarter = create(:quarter)
  end

  test "should return all quarters of district" do
    get city_town_districts_url(@quarter.district.town.city, @quarter.district.town, @quarter.district)

    assert_response :success
  end

  test "should return quarters with by searching of district" do
    get search_city_town_districts_url(@quarter.district.town.city, @quarter.district.town, @quarter.district)

    assert_response :success
  end
end
