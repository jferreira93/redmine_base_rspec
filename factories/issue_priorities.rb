FactoryBot.define do
  factory :issue_priority do
    sequence(:name) {|count| "Issue Priority Name #{ count }" }
    association :issue, factory: :issue
  end
end
