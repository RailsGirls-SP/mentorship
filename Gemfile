source "https://rubygems.org"

ruby "3.3.0"

gem "rails", "~> 7.1.3", ">= 7.1.3.2"

gem "dotenv", "~> 3.1"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

gem "sprockets-rails"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

gem "redis", "~> 5.1"
gem "sidekiq", "~> 7.2"
gem "sidekiq-scheduler", "~> 5.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri windows]
  gem "pry-byebug", "~> 3.10", require: false
  gem "standard", "~> 1.34"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"
end

group :test do
  # https://github.com/rspec/rspec-rails
  gem "rspec-rails", "6.1.0"
  gem "shoulda-matchers"
  gem "rspec-sidekiq", "~> 4.1"
end

gem "authentication-zero", "~> 2"
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"
