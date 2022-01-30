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
    self
  ].freeze

  def index
    render html: nil, layout: 'layouts/swagger'
  end

  def data
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end
end
