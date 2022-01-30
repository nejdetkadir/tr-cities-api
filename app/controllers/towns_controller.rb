# frozen_string_literal: true

class TownsController < ApplicationController
  before_action :set_city

  def index
    @towns = @city.towns.page(pagination_object.page).per(pagination_object.per_page)
  end

  def search
    query = @city.towns.ransack(params[:q])

    @towns = query.result.page(pagination_object.page).per(pagination_object.per_page)
  end

  private

  def set_city
    @city = City.find(params[:city_id])
  end
end
