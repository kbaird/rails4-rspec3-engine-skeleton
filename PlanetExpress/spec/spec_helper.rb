ENV['RAILS_ENV'] ||= 'test'

require File.expand_path("../dummy/config/environment.rb", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'database_cleaner'
require 'factory_girl_rails'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"

  # See http://stackoverflow.com/a/11915769/38743
  config.include Module.new {
    def self.included base
      base.routes { PlanetExpress::Engine.routes }
    end
  }, type: :controller

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.orm      = :mongoid
  end
  config.before(:example) do
    DatabaseCleaner.start
    FactoryGirl.lint
  end
  config.after(:example) do
    DatabaseCleaner.clean
  end

end
