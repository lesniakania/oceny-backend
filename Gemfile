source 'https://rubygems.org'

gem 'rails', '4.2.0'

gem 'rom', git: 'git@github.com:rom-rb/rom.git'
gem 'rom-repository', git: 'git@github.com:rom-rb/rom-repository.git'
gem 'rom-sql', git: 'git@github.com:rom-rb/rom-sql.git'
gem 'rom-rails', git: 'git@github.com:rom-rb/rom-rails.git'
gem 'pg'
gem 'rack-cors', :require => 'rack/cors'

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 3.0'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop'
  gem 'web-console', '~> 2.0'
end

group :test do
  gem 'factory_girl'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rubocop', git: 'git@github.com:bbatsov/rubocop.git'
end
