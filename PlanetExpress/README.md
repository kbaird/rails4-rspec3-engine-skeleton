# "_Planet Express_" Engine

## How to Include in a Rails App

(assuming the gem has been renamed from `rails4-rspec3-engine-skeleton` to `planet_express` - modify accordingly if that's not the case).

1. Add `gem 'planet_express', git: 'https://url/to/planet_express.git'` to your `Gemfile`.
1. Add `mount PlanetExpress::Engine => '/planet_express'` to your `config/routes.rb` file.
1. Run `rake planet_express:install:migrations` to copy necessary migrations to your `db/migrate` directory.
1. Run `rake db:migrate` to run the new migrations.
1. Run your Rails app and visit `/planet_express`.
