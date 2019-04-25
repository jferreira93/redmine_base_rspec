FactoryBot.define do
  factory :incident_report do
    association :issue, factory: :issue

    after(:create) do |incident_report|
      issue = incident_report.issue
      issue.incident_report = incident_report
    end
  end
end
