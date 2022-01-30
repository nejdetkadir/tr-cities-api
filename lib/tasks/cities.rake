# frozen_string_literal: true

namespace :import do
  desc 'Imports cities from db/static_data'
  task cities: :environment do
    cities = YAML.load_file(Rails.root.join('db/static_data/cities.yml'))

    cities.each do |city|
      current_city = City.create!(name: city['name'], alpha_2_code: city['alpha_2_code'])

      city['towns'].each do |town|
        current_town = current_city.towns.create!(name: town['name'])

        town['districts'].each do |district|
          current_district = current_town.districts.create!(name: district['name'])

          district['quarters'].each do |quarter|
            current_district.quarters.create!(name: quarter['name'])
          end
        end
      end
    end
  end
end
