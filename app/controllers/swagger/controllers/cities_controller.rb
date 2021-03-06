# frozen_string_literal: true

module Swagger
  module Controllers
    class CitiesController
      include Swagger::Blocks

      swagger_path '/cities' do
        operation :get do
          key :summary, 'Return cities'
          key :description, 'Return cities with your pagination parameters'
          key :operationId, 'listCities'
          key :tags, [
            'cities'
          ]

          parameter do
            key :'$ref', :page
          end

          parameter do
            key :'$ref', :per_page
          end

          response 200 do
            key :description, 'Successfull response'
            content :'application/json' do
              schema do
                key :'$ref', :CitiesListResponse
              end
            end
          end
        end
      end

      swagger_path '/cities/{city_id}' do
        operation :get do
          key :summary, 'Return city with by id'
          key :description, 'Return city with by id'
          key :operationId, 'showCity'
          key :tags, [
            'cities'
          ]

          parameter do
            key :'$ref', :city_id
          end

          response 200 do
            key :description, 'Successfull response'
            content :'application/json' do
              schema do
                key :'$ref', :CityShowResponse
              end
            end
          end
        end
      end

      swagger_path '/cities/search' do
        operation :get do
          key :summary, 'Return cities with search parameters'
          key :description, 'Return cities with your pagination and search parameters'
          key :operationId, 'searchCities'
          key :tags, [
            'cities'
          ]

          parameter do
            key :'$ref', :page
          end

          parameter do
            key :'$ref', :per_page
          end

          parameter do
            key :name, :q
            key :in, :query
            key :description, 'You can filter by [eq, not_eq, matches, does_not_match, lt, gteq, lteq,
                               gt, in, not_in, cont, cont_any, cont_all, not_cont_all, i_cont, not_i_cont,
                               i_cont_any, not_i_cont_any, i_cont_all, not_i_cont_all, start, not_start,
                               end, not_end, true, not_true, false, not_false, present, blank, null, not_null]'
            key :required, false
            key :style, :deepObject
            schema do
              key :'$ref', :CityFilter
            end
          end

          response 200 do
            key :description, 'Successfull response'
            content :'application/json' do
              schema do
                key :'$ref', :CitiesListResponse
              end
            end
          end
        end
      end
    end
  end
end
