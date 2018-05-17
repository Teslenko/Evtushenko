source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# ruby '2.4.3'
ruby '2.4.1'

gem 'rails', '~> 5.1.4'

gem 'jquery-turbolinks'

gem 'bcrypt','~> 3.1.7'

gem 'sass-rails', '~> 5.0'

gem 'puma', '~> 3.7'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'jquery-ui-rails'

gem 'jquery-rails', '~> 4.1', '>= 4.1.1'

gem 'paperclip'

gem 'carrierwave', '~> 0.10.0'

gem 'mini_magick', '~> 4.3'

gem 'image_magick'

gem 'bootstrap-sass', ' 3.3.7'

gem 'ransack'

gem 'devise'

gem 'launchy'

gem 'nokogiri'

gem 'less-rails'

gem 'therubyracer'

gem 'selenium-webdriver', '~> 3.8'

gem "watir", "~> 6.10"


group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'letter_opener'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :development do

  gem 'web-console', '>= 3.3.0'

  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'spring'

  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'byebug'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'pg', '~> 0.21.0'
  gem 'rails_12factor'
end
