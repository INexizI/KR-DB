source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

gem 'rails', '~> 7.0.0'
gem 'pg'
gem 'puma', '>= 5.6.4'
gem 'bootsnap', require: false
gem 'sass-rails', '>= 6.0.0'

gem 'webpacker', '>= 5.4.3'
gem 'jbuilder', '>= 2.11.5'
gem 'json'
gem 'redis'
gem 'redis-namespace'
gem 'redis-rails', '>= 5.0.2'
gem 'sidekiq', '>= 6.4.0'
gem 'hotwire-rails', '>= 0.1.3'
gem 'meta-tags', '>= 2.16.0'

gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'slim-rails', '>= 3.3.0'
gem 'simple_form', '>= 5.1.0'
gem 'friendly_id'
# gem 'mini_magick'
# gem 'carrierwave'
# gem 'image_processing'
gem 'acts-as-taggable-on'
gem 'rack-cors'
gem 'rubyzip'
gem 'uglifier'

gem 'turbo-rails', '~> 0.8.3'

gem 'nokogiri', '~> 1.13', '>= 1.13.4'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'brakeman'
  gem 'rspec-rails', '~> 6.0.0.rc1'
  gem 'rails-controller-testing'
end

group :development do
  gem 'web-console', '>= 4.2.0'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
