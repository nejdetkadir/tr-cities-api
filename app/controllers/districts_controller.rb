# frozen_string_literal: true

class DistrictsController < ApplicationController
  before_action :set_city, except: [:show]
  before_action :set_town, except: [:show]

  def index
    @districts = @town.districts.page(pagination_object.page).per(pagination_object.per_page)
  end

  def show
    @district = District.find(params[:id])
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
