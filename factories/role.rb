FactoryBot.define do
  factory :role do
    sequence(:name) {|count| "Role Name #{ count }" }
  end
end
