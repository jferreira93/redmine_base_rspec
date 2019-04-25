FactoryBot.define do
  factory :project do
    sequence(:description) {|count| "Project Description #{ count }" }
    sequence :homepage do |count|
      "http://project-homepage-#{ count }.example.com/"
    end
    sequence(:identifier) {|count| "project-user-#{ count }" }
    sequence(:name) {|count| "Project Name #{ count }" }
    created_on { 1.day.ago.to_s(:db) }
    updated_on { 1.day.ago.to_s(:db) }
    is_public { true }
  end
end
