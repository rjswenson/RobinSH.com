source 'https://rubygems.org'

gem 'rails', '4.0.1'

group :development, :test do
  gem 'minitest-rails-capybara'
  gem 'capybara-webkit'
  gem 'sqlite3'
  gem 'minitest-colorize'
  gem 'pry'
  gem 'simplecov', :require => false
  gem 'launchy'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'activerecord-postgresql-adapter'
end

# Security
gem 'figaro'
gem 'devise'
gem 'pundit'

# Performance
gem 'will_paginate'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  gem 'sdoc', require: false
end

ruby "2.0.0"
