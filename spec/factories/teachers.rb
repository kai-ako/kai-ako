FactoryGirl.define do
  factory :teacher do
    name Faker::Name.name
    provider "github"
    uid SecureRandom.hex
    teacher? true
  end
end
