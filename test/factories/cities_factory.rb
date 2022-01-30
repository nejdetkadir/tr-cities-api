# frozen_string_literal: true

FactoryBot.define do
  factory :city do
    name { Faker::Address.city }
    alpha_2_code { "TR-#{Faker::Number.between(from: 1, to: 81)}" }
  end
end
