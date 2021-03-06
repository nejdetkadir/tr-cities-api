# frozen_string_literal: true

module Swagger
  module Controllers
    class DistrictsController
      include Swagger::Blocks

      swagger_path '/cities/{city_id}/towns/{town_id}/districts' do
        operation :get do
          key :summary, 'Return districts with by town id'
          key :description, 'Return towns with your pagination parameters with by town id'
          key :operationId, 'listDistricts'
          key :tags, [
            'districts'
          ]

          parameter do
            key :'$ref', :city_id
          end

          parameter do
            key :'$ref', :town_id
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
                key :'$ref', :DistrictsListResponse
              end
            end
          end
        end
      end

      swagger_path '/districts/{district_id}' do
        operation :get do
          key :summary, 'Return district with by id'
          key :description, 'Return district with by id'
          key :operationId, 'showDistrict'
          key :tags, [
            'districts'
          ]

          parameter do
            key :'$ref', :district_id
          end

          response 200 do
            key :description, 'Successfull response'
            content :'application/json' do
              schema do
                key :'$ref', :DistrictShowResponse
              end
            end
          end
        end
      end

      swagger_path '/cities/{city_id}/towns/{town_id}/districts/search' do
        operation :get do
          key :summary, 'Return districts with search parameters with by town_id id'
          key :description, 'Return districts with your pagination and search parameters with by town_id id'
          key :operationId, 'searchDistricts'
          key :tags, [
            'districts'
          ]

          parameter do
            key :'$ref', :city_id
          end

          parameter do
            key :'$ref', :town_id
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
              key :'$ref', :DistrictFilter
            end
          end

          response 200 do
            key :description, 'Successfull response'
            content :'application/json' do
              schema do
                key :'$ref', :DistrictsListResponse
              end
            end
          end
        end
      end
    end
  end
end
