# frozen_string_literal: true

FactoryGirl.define do
	factory :post do
		title Faker::Name.initials(number: 6)
		body "body"
	end
end