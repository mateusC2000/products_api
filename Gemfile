source "https://rubygems.org"

gem "rails", "~> 7.2.2", ">= 7.2.2.1"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "rack-cors", "~> 3.0.0"
gem "rubocop"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "capybara"
  gem "database_cleaner-active_record"
  gem "factory_bot_rails"
  gem "pry-byebug"
  gem "rack-cors", "~> 3.0.0"
  gem "rspec-rails"
  gem "shoulda-matchers", "~> 6.5"
  gem "rubocop-rails-omakase", require: false
end
