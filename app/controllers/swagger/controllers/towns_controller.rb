# frozen_string_literal: true

module Swagger
  module Controllers
    class TownsController
      include Swagger::Blocks

      swagger_path '/cities/{city_id}/towns' do
        operation :get do
          key :summary, 'Return towns with by city id'
          key :description, 'Return towns with your pagination parameters with by city id'
          key :operationId, 'listTowns'
          key :tags, [
            'towns'
          ]

          parameter do
            key :name, :city_id
            key :in, :path
            key :description, 'The id of the city'
            key :required, true
            schema do
              key :type, :integer
            end
          end

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
                key :'$ref', :TownsListResponse
              end
            end
          end
        end
      end

      swagger_path '/cities/{city_id}/towns/search' do
        operation :get do
          key :summary, 'Return towns with search parameters with by city id'
          key :description, 'Return towns with your pagination and search parameters with by city id'
          key :operationId, 'searchTowns'
          key :tags, [
            'towns'
          ]

          parameter do
            key :name, :city_id
            key :in, :path
            key :description, 'The id of the city'
            key :required, true
            schema do
              key :type, :integer
            end
          end

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
              key :'$ref', :TownFilter
            end
          end

          response 200 do
            key :description, 'Successfull response'
            content :'application/json' do
              schema do
                key :'$ref', :TownsListResponse
              end
            end
          end
        end
      end
    end
  end
end
