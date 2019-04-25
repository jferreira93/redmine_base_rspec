FactoryBot.define do
  factory :custom_value do
    sequence(:custom_field_id) { |count| count }
    sequence(:value) { |count| count }
  end
end
