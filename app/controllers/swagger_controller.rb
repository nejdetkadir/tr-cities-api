# frozen_string_literal: true

class SwaggerController < ApplicationController
  include Swagger::Blocks

  swagger_root do
    key :openapi, '3.0.0'

    info do
      key :version, '1.0.0'
      key :title, 'Cities in Turkey'
      key :description, 'Cities in Turkey API documentation'

      contact do
        key :name, 'Nejdet Kadir Bektaş'
        key :url, 'https://github.com/nejdetkadir/tr-cities-api'
        key :email, 'nejdetkadir.550@gmail.com'
      end
    end

    server do
      key :url, Rails.application.credentials[:url]
    end
  end

  # A list of all classes that have swagger_* declarations.
  SWAGGERED_CLASSES = [
    Swagger::Controllers::CitiesController,
    Swagger::Controllers::TownsController,
    Swagger::Controllers::DistrictsController,
    Swagger::Controllers::QuartersController,
    Swagger::Parameters::Page,
    Swagger::Parameters::CityFilter,
    Swagger::Parameters::TownFilter,
    Swagger::Parameters::DistrictFilter,
    Swagger::Parameters::QuarterFilter,
    Swagger::Parameters::CityId,
    Swagger::Parameters::TownId,
    Swagger::Parameters::DistrictId,
    Swagger::Parameters::QuarterId,
    Swagger::Responses::City::List,
    Swagger::Responses::City::Show,
    Swagger::Responses::Town::List,
    Swagger::Responses::Town::Show,
    Swagger::Responses::District::List,
    Swagger::Responses::District::Show,
    Swagger::Responses::Quarter::List,
    Swagger::Responses::Quarter::Show,
    Swagger::Models::City,
    Swagger::Models::Meta,
    Swagger::Models::Pagination,
    Swagger::Models::Town,
    Swagger::Models::District,
    Swagger::Models::Quarter,
    self
  ].freeze

  def index
    render html: nil, layout: 'layouts/swagger'
  end

  def data
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end
end
