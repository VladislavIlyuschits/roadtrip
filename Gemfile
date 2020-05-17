# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'administrate', '0.13.0'
gem 'administrate-field-active_storage', '~> 0.1.2'
gem 'bootstrap', '4.3.1'
gem 'devise', '4.7.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'rails', '~> 5.2.1'
gem 'sass-rails', '~> 5.0'
gem 'simple_form', '4.0.1'
gem 'slim-rails', '3.1.3'
gem 'uglifier', '>= 1.3.0'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'pry-rails', '0.3.6'
  gem 'rails-flog', '1.4.0', require: 'flog'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem "capybara", ">= 2.15", "< 4.0"
  gem "selenium-webdriver", "3.13.1"
  gem "chromedriver-helper", "1.2.0"
  gem "rspec-rails", "3.7.2"
end
