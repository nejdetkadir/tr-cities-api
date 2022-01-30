# frozen_string_literal: true

class QuartersController < ApplicationController
  before_action :set_city
  before_action :set_town
  before_action :set_district

  def index
    @quarters = @district.quarters.page(pagination_object.page).per(pagination_object.per_page)
  end

  def search
    query = @district.quarters.ransack(params[:q])

    @quarters = query.result.page(pagination_object.page).per(pagination_object.per_page)
  end

  private

  def set_city
    @city = City.find(params[:city_id])
  end

  def set_town
    @town = @city.towns.find(params[:town_id])
  end

  def set_district
    @district = @town.districts.find(params[:district_id])
  end
end
