# frozen_string_literal: true

FactoryBot.define do
  factory :district do
    name { Faker::Address.city }
    association :town, factory: :town
  end
end
