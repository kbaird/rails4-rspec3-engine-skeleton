# "_Planet Express_" Engine

## How to Include in a Rails App

### For apps that use ActiveRecord

Add `gem 'planet_express', git: 'git@github.com:kbaird/rails4-rspec3-engine-skeleton.git'` to your `Gemfile`.

### For apps that use Mongoid

Add `gem 'planet_express', branch: 'Mongoid', git: 'git@github.com:kbaird/rails4-rspec3-engine-skeleton.git'` to your `Gemfile`.

### For both

1. Add `mount PlanetExpress::Engine => '/planet_express'` to your `config/routes.rb` file.
1. Run `rake planet_express:install:migrations` to copy necessary migrations to your `db/migrate` directory.
1. Run `rake db:migrate` to run the new migrations.
1. Run your Rails app and visit `/planet_express`.
