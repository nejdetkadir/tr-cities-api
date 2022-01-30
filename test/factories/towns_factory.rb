# frozen_string_literal: true

FactoryBot.define do
  factory :town do
    name { Faker::Address.city }
    association :city, factory: :city
  end
end
