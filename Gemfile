source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jbuilder', '~> 2.0'
gem 'haml', '~> 4.0.6'
gem 'haml-rails', '~> 0.9.0'
gem 'config', '~> 1.0.beta3'
gem 'sprite-factory', '~> 1.6.2'
gem 'mongoid', '~> 5.2'
gem 'bson_ext'
gem 'rails-i18n', '~> 4.0.4'
gem 'turbolinks', '~> 2.5.3'
gem 'devise', '~> 3.5.1'
gem 'thin', '~> 1.6.3'
gem 'nokogiri', '~> 1.6.6.2'
gem 'rubygems-update', '~> 2.4', '>= 2.4.8'
gem 'uglifier', '~> 3.0'
gem 'foundation-rails', '~> 6.2', '>= 6.2.1.0'
gem 'font-awesome-rails', '~> 4.6', '>= 4.6.3.0'
gem 'sprockets', '~> 3.6'
gem 'sprockets-rails', '~> 3.0', '>= 3.0.4'
gem 'jquery-rails', '~> 4.1', '>= 4.1.1'
gem 'feedjira', '~> 2.1', '>= 2.1.2'

group :development do
  gem 'byebug', '~> 5.0.0'
  gem 'spring', '~> 1.3.6'
  gem 'web-console', '~> 2.0'
  gem 'html2haml', '~> 2.0.0'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false
  gem 'rack-livereload', '~> 0.3.16'
end

group :doc do
  gem 'sdoc', '~> 0.4.0'
end

group :test do
  gem 'minitest', '~> 5.8', '>= 5.8.4'
  gem 'mongoid-minitest', '~> 1.1'
  gem 'minitest-matchers', '~> 1.4', '>= 1.4.1'
  gem 'factory_girl_rails', '~> 4.7'
  gem 'faker', '~> 1.6', '>= 1.6.3'
end

group :local do
  gem 'railroady', '~> 1.4', '>= 1.4.2'
  gem 'haml_lint', '~> 0.17.0'
  gem 'rubycritic', '~> 2.9'
end

group :asset do
  gem 'zurb-foundation', '~> 4.3', '>= 4.3.2'
end

# Just for docker
group :docker do
  # TZInfo::Data contains data from the IANA Time Zone database packaged as Ruby modules
  # for use with TZInfo.
  gem 'tzinfo-data', '~> 1.2016', '>= 1.2016.10'
  # Rake is a Make-like program implemented in Ruby. Tasks and dependencies are specified
  # in standard Ruby syntax. Rake has the following features: * Rakefiles (rake's version
  # of Makefiles) are completely defined in standard Ruby syntax. No XML files to edit.
  # No quirky Makefile syntax to worry about (is that a tab or a space?) * Users can
  # specify tasks with prerequisites. * Rake supports rule patterns to synthesize
  # implicit tasks. * Flexible FileLists that act like arrays but know about manipulating
  # file names and paths. * Supports parallel execution of tasks.
  gem 'rake', '~> 10.0'
  gem 'therubyracer', '~> 0.12.2', platforms: :ruby
  gem 'execjs'
end

group :local do
  # Automatic Ruby code style checking tool. Aims to enforce the community-driven Ruby
  # Style Guide.
  gem 'rubocop'
  # Utility to install, configure, and extend Git hooks
  gem 'overcommit', '~> 0.36.0'
  # Reek is a tool that examines Ruby classes, modules and methods and reports any code
  # smells it finds.
  gem 'reek', '~> 4.4', '>= 4.4.1'
  # Brakeman detects security vulnerabilities in Ruby on Rails applications via static
  # analysis.
  gem 'brakeman', '~> 3.4'
end
