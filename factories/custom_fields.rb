FactoryBot.define do
  factory :custom_field do
    sequence(:name) { |count| "Custom Field Name #{ count }"}
    field_format { 'bool' }
  end
end
