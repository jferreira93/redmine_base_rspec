ENV['RAILS_ENV'] ||= 'test'

#load simplecov
if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start 'rails' do
    coverage_dir 'tmp/coverage'
###    require "pry"
###    binding.pry
    #exclude core dirs coverage
    add_filter do |file|
      file.filename.include?('/lib/plugins/') ||
        !file.filename.include?('/plugins/')
    end
  end
end

#load rails/redmine
require File.expand_path('../../../../config/environment', __FILE__)

#test gems
require 'rspec/rails'
# require 'rspec/autorun'
require 'rspec/mocks'
require 'rspec/mocks/standalone'

module AssertSelectRoot
  def document_root_element
    html_document.root
  end
end

#rspec base config
RSpec.configure do |config|
  config.mock_with :rspec
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
  config.fixture_path = "#{::Rails.root}/test/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.include AssertSelectRoot, :type => :request

  config.include ActiveSupport::Testing::TimeHelpers
  config.include RSpec::Rails::RequestExampleGroup, type: :feature
  [:controller, :view, :request].each do |type|
    config.include ::Rails::Controller::Testing::TestProcess, :type => type
    config.include ::Rails::Controller::Testing::TemplateAssertions, :type => type
    config.include ::Rails::Controller::Testing::Integration, :type => type
  end
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
  FactoryBot.definition_file_paths << './redmine_base_rspec/factories/'
  FactoryBot.find_definitions
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with :truncation
    Setting.create(name: 'bcc_recipients', value: '0')
  end
end
