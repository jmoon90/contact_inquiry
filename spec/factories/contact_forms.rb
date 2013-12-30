# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact_form do
    sequence(:email) { |n| 'j@aol.com' }
    sequence(:first_name) { |n| "John#{n}" }
    sequence(:last_name) { |n| "Doe#{n}" }
    subject  "Life"
    description  "This is life article boy"
  end
end
