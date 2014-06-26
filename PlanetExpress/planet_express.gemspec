$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "planet_express/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "planet_express"
  s.version     = PlanetExpress::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of PlanetExpress."
  s.description = "TODO: Description of PlanetExpress."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'activerecord'
  # MongoDB w/Mongoid instead of ActiveRecord
  #s.add_dependency 'mongoid'
  #s.add_dependency 'bson_ext'

  s.add_dependency 'rails', '~> 4.1.1'

  # Use SCSS for stylesheets
  s.add_dependency 'sass-rails', '~> 4.0.0'

  # Use CoffeeScript for .js.coffee assets and views
  s.add_dependency 'coffee-rails', '~> 4.0.0'

  s.add_dependency 'haml'

  s.add_development_dependency 'haml-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec', '3.0'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'database_cleaner', '< 1.1.0'
  s.add_development_dependency 'simplecov'
end
