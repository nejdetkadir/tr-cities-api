# frozen_string_literal: true

FactoryBot.define do
  factory :city do
    name { Faker::Address.city }
    sequence :alpha_2_code do |n|
      "TR-#{n}"
    end
  end
end
