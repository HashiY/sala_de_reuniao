source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.5'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'duktape'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'rails-i18n'
#It's a small library to provide the Rails I18n translations on the JavaScript.
gem 'i18n-js'
# acha erros rails na forma mais legivel
gem 'better_errors'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
#Webpacker makes it easy to use the JavaScript pre-processor and bundler webpack 5.x.x+ to manage application-like JavaScript in Rails
gem 'webpacker'
# Flexible authentication solution for Rails with Warden
gem 'devise'
# Translations for the devise gems
gem 'devise-i18n'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'
gem 'bootstrap_sb_admin_base_v2'
# caixa de mensagrns mais bonita
gem 'rails-assets-bootbox', source: 'https://rails-assets.org'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for Active Record. It lets you create pretty URLs and work with human-friendly strings as if they were numeric ids.
gem 'friendly_id', '~> 5.2', '>= 5.2.4'
# Manage Procfile-based applications
gem 'foreman', '~> 0.84.0'
# Sidekiq uses threads to handle many jobs at the same time in the same process. It does not require Rails but will integrate tightly with Rails to make background processing dead simple.
gem 'sidekiq', '~> 5.1', '>= 5.1.3'
# Tailwind CSS is a utility-first CSS framework packed with classes like flex, pt-4, text-center and rotate-90 that can be composed to build any design, directly in your markup.
gem 'tailwindcss', '~> 0.2.0'


# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # The listen gem listens to file modifications and notifies you about the changes.
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
