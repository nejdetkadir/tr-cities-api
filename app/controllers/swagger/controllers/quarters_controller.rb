# frozen_string_literal: true

# rubocop:disable Metrics/ClassLength
module Swagger
  module Controllers
    class QuartersController
      include Swagger::Blocks

      swagger_path '/cities/{city_id}/towns/{town_id}/districts/{district_id}/quarters' do
        operation :get do
          key :summary, 'Return quarters with by district id'
          key :description, 'Return quarters with your pagination parameters with by district id'
          key :operationId, 'listQuarters'
          key :tags, [
            'quarters'
          ]

          parameter do
            key :'$ref', :city_id
          end

          parameter do
            key :'$ref', :town_id
          end

          parameter do
            key :'$ref', :district_id
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
                key :'$ref', :QuartersListResponse
              end
            end
          end
        end
      end

      swagger_path '/quarters/{quarter_id}' do
        operation :get do
          key :summary, 'Return quarter with by id'
          key :description, 'Return quarter with by id'
          key :operationId, 'showQuarter'
          key :tags, [
            'quarters'
          ]

          parameter do
            key :'$ref', :quarter_id
          end

          response 200 do
            key :description, 'Successfull response'
            content :'application/json' do
              schema do
                key :'$ref', :QuarterShowResponse
              end
            end
          end
        end
      end

      swagger_path '/cities/{city_id}/towns/{town_id}/districts/{district_id}/quarters/search' do
        operation :get do
          key :summary, 'Return quarters with search parameters with by district id'
          key :description, 'Return quarters with your pagination and search parameters with by district id'
          key :operationId, 'searchQuarters'
          key :tags, [
            'quarters'
          ]

          parameter do
            key :'$ref', :city_id
          end

          parameter do
            key :'$ref', :town_id
          end

          parameter do
            key :'$ref', :district_id
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
              key :'$ref', :QuarterFilter
            end
          end

          response 200 do
            key :description, 'Successfull response'
            content :'application/json' do
              schema do
                key :'$ref', :QuartersListResponse
              end
            end
          end
        end
      end
    end
  end
end
# rubocop:enable Metrics/ClassLength
