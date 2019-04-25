FactoryBot.define do
  factory :issue_status do
    sequence(:name) {|count| "Issue Status #{ count }" }
    is_closed { false }
  end
end
