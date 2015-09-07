FactoryGirl.define do
	factory :user do
		name Faker::Name.name
		provider "github"
		uid	SecureRandom.hex
    teacher? false
	end
end
