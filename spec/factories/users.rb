FactoryGirl.define do
	factory :user do
		name Faker::Name.name
		provider "github"
		uid	SecureRandom.hex
	end
end
