# If you have OpenSSL installed, we recommend updating
# the following line to use 'https'
source 'http://rubygems.org'

# For faster file watcher updates on Windows:
gem 'wdm', '~> 0.1.0', platforms: [:mswin, :mingw]

# Windows does not come with time zone data
gem 'tzinfo-data', platforms: [:mswin, :mingw, :jruby]

# Middleman Gems
gem 'middleman'
gem 'middleman-blog'
gem 'middleman-compass', '>= 4.0.1'
gem 'sprockets', '~> 3.7'             # upgrading to sprockets ~> 4.0.0 introduces new errors
gem 'middleman-sprockets'
gem 'middleman-livereload'
gem 'middleman-deploy', '~> 2.0.0-alpha'
gem 'middleman-metaman'

gem 'builder'
gem 'middleman-jquery'
gem 'font-awesome-sass', '~> 4.5'     # update to ~> 5.0 is breaking (e.g. social links) 
gem 'sassc', '= 2.1.0'                # v2.2.0 and v2.2.1 introduce a bug on our github actions
                                      # see: https://github.com/actions/cache/issues/196

gem 'slim'
gem 'nokogiri'
gem 'html-proofer'

source 'https://rails-assets.org' do
  gem 'rails-assets-mapbox.js', '~> 2.1.9', require: false

  gem 'rails-assets-jquery.scrollex', require: false
  gem 'rails-assets-skel', '~> 3.0.0.dev'
  gem 'rails-assets-html5shiv', '~> 3.6.2', require: false
  gem 'rails-assets-respond', require: false

  gem 'rails-assets-jquery.easing', '~> 1.3.1', require: false
  gem 'rails-assets-Hover', '~> 1.0.9', require: false
  gem 'rails-assets-formstone', '~> 0.6.1', require: false
  gem 'rails-assets-jquery.stellar', '~> 0.6.2', require: false
end
