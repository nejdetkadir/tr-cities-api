# frozen_string_literal: true

FactoryBot.define do
  factory :quarter do
    name { Faker::Address.city }
    association :district, factory: :district
  end
end
