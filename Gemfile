source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '~> 4.1.1'
gem 'bcrypt'

gem 'haml-rails'
gem 'dynamic_form'
gem 'sass-rails',   '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.0'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'turbolinks'

gem 'pg', group: :production

group :production, :development do
  gem 'uglifier', '>= 1.3.0'
end

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'guard-rspec', require: false
end

group :development, :test do
  gem 'sqlite3'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'rspec-activemodel-mocks'
end

group :test do
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'minitest'
  gem 'shoulda-matchers'
  gem 'capybara'
end