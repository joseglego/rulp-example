source 'https://rubygems.org'

gem 'rails', '~> 5.1.4'

gem 'active_model_serializers', '~> 0.9.3'
gem 'aws-sdk', '~> 2.5'
gem 'coffee-rails', '~> 4.2'
gem 'enumerize'
gem 'jbuilder', '~> 2.5'
gem 'pg', '~> 0.21'
gem 'power-types'
gem 'puma', '~> 3.7'
gem 'rack-cors', '~> 0.4.0'
gem 'rails-i18n'
gem 'responders'
gem 'rulp', require: false
gem 'sass-rails', '~> 5.0'
gem 'simple_token_authentication', '~> 1.0'
gem 'spring'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'versionist'

group :production do
  gem 'heroku-stage'
  gem 'rack-timeout'
  gem 'rails_stdout_logging'
end

group :test do
  gem 'rspec_junit_formatter', '0.2.2'
  gem 'shoulda-matchers', require: false
end

group :development do
  gem 'annotate'
end

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'guard-rspec', require: false
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-nc', require: false
  gem 'rspec-rails'
end

group :production, :development, :test do
  gem 'tzinfo-data'
end
