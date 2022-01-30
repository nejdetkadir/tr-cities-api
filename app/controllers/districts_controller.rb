# frozen_string_literal: true

class DistrictsController < ApplicationController
  before_action :set_city
  before_action :set_town

  def index
    @districts = @town.districts.page(pagination_object.page).per(pagination_object.per_page)
  end

  def search
    query = @town.districts.ransack(params[:q])

    @districts = query.result.page(pagination_object.page).per(pagination_object.per_page)
  end

  private

  def set_city
    @city = City.find(params[:city_id])
  end

  def set_town
    @town = @city.towns.find(params[:town_id])
  end
end
