# frozen_string_literal: true

FactoryBot.define do
	factory :post do
		title { Faker::Name.initials(number: 6) }
		body { "body" }
	end
end