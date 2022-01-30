# frozen_string_literal: true

class CitiesController < ApplicationController
  def index
    @cities = City.all.page(pagination_object.page).per(pagination_object.per_page)
  end

  def show
    @city = City.find(params[:id])
  end

  def search
    query = City.ransack(params[:q])

    @cities = query.result.page(pagination_object.page).per(pagination_object.per_page)
  end
end
