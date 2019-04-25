FactoryBot.define do
  factory :priority_criterium do
    association :tracker, factory: :tracker
    association :priority, factory: :issue_priority
    sequence(:message) { |count| "Priority criterium message #{ count }" }
  end
end
