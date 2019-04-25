FactoryBot.define do
  factory :project_hour do
    association :project, factory: :project
    sequence(:hour_project_id) { |count| "Hour Project ID #{ count }" }
    sequence(:hour_project_name) { |count| "Hour Project Name #{ count }" }
  end
end
