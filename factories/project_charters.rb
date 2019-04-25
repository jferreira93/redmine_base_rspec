FactoryBot.define do
  factory :project_charter do
    association :project, factory: :project
    association :project_manager, factory: :user
    association :technician_reference, factory: :user
    sequence(:name) { |count| "Project Charter Name #{ count }" }
  end
end
