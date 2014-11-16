source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use Bootstrap for styling
gem 'bootstrap-sass'
#for nice icons
gem 'font-awesome-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'jquery-ui-rails'

#image uploading
gem "paperclip", "~> 4.1"
# user authentication
gem 'devise'
# Allows login and registering through Facebook
gem 'omniauth-facebook'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

#for live stuff
gem 'puma'
gem 'redis'

group :development do 
  gem 'quiet_assets' # Turns off the Rails asset pipeline log
end


group :development, :test do
  gem 'rspec-rails' # Run rake tests in development
  gem 'therubyracer' # Javascript runtime for development
  gem "better_errors"
    gem 'flay'
    gem 'annotate'
    gem 'lol_dba'
    gem 'rails_best_practices'
    gem 'smusher'
  gem 'sqlite3'
end

#Heroku support
group :production do
  gem 'rails_12factor'
  gem 'pg'
end
# Use unicorn as the app server
# gem 'unicorn'
