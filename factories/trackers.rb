FactoryBot.define do
  factory :tracker do
    sequence(:name) {|count| "Tracker Name #{ count }" }
    is_in_chlog { true }
    association :default_status, factory: :issue_status
  end
end
