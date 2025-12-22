source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.4.1"

gem "rails", "~> 8.1.1"
gem "propshaft"
gem "pg"
gem "sqlite3", ">= 2.1"
gem "puma", ">= 6.4.3"
gem "sass-rails"

gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "solid_cache"
gem "solid_queue"
gem "solid_cable", ">= 3.0.12"

gem "bootsnap", require: false

gem "kamal", require: false

gem "thruster", require: false

# gem 'json'
# gem 'redis'
# gem 'redis-namespace'
# gem 'redis-rails', '>= 5.0.2'
# gem 'sidekiq', '>= 7.2.4'
# gem 'hotwire-rails', '>= 0.1.3'
# gem 'meta-tags', '>= 2.21.0'

gem "ransack", github: "activerecord-hackery/ransack", branch: "main"
gem "slim-rails"
gem "simple_form"
gem "friendly_id"
# gem 'mini_magick'
# gem 'carrierwave'
# gem 'image_processing'
# gem 'acts-as-taggable-on'
gem "rack-cors"
# gem 'rubyzip'
# gem 'uglifier'

# gem 'nokogiri'

gem "elasticsearch-model"
gem "elasticsearch-rails"
gem "elasticsearch-persistence"

gem "tailwindcss-ruby", "4.1.18"
gem "tailwindcss-rails"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  # gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # gem 'rspec-rails'
  # gem 'rails-controller-testing'
end

group :development do
  gem "web-console"
  # gem 'listen'
  # gem 'spring'
  # gem 'spring-watcher-listen'
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers", "= 5.3.0"
  # gem "shoulda-matchers"
end
