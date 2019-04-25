FactoryBot.define do
  factory :project_charter_calification do
    association :project_charter, factory: :project_charter
  end
end
