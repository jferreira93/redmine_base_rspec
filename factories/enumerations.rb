FactoryBot.define do
  factory :enumeration do
    sequence(:name) { |count| "Enumeration #{ count }"}
    association :project, factory: :project
  end
end
