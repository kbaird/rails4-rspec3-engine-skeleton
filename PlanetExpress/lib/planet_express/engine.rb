module PlanetExpress
  class Engine < ::Rails::Engine
    isolate_namespace PlanetExpress
     config.generators do |g|
       #g.template_engine  :haml
       g.test_framework   :rspec, fixture: false
       g.integration_tool :rspec
       g.fixture_replacement :factory_girl, dir: 'spec/factories'
     end
  end
end
