source 'https://rubygems.org'

gem 'rails', '~> 5.0', '>= 5.0.2'
gem 'sass-rails', '~> 5.0', '>= 5.0.6'
gem 'coffee-rails', '~> 4.2', '>= 4.2.1'
gem 'jbuilder', '~> 2.6', '>= 2.6.3'
gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'haml-rails', '~> 0.9.0'
gem 'config', '~> 1.4'
gem 'sprite-factory', '~> 1.7', '>= 1.7.1'
gem 'mongoid', '~> 6.1'
gem 'bson_ext'
gem 'rails-i18n', '~> 5.0', '>= 5.0.3'
gem 'turbolinks', '~> 5.0', '>= 5.0.1'
gem 'devise', '~> 4.2.1'
gem 'thin', '~> 1.7.0'
gem 'font-awesome-rails', '~> 4.6', '>= 4.6.3.0'
gem 'feedjira', '~> 2.1', '>= 2.1.2'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'foundation-rails', '~> 6.3', '>= 6.3.1.0'

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

# Just for docker
group :docker do
  # TZInfo::Data contains data from the IANA Time Zone database packaged as Ruby modules
  # for use with TZInfo.
  gem 'tzinfo-data', '~> 1.2016', '>= 1.2016.10'
  # ExecJS lets you run JavaScript code from Ruby.
  gem 'execjs', '~> 2.7'
end

group :local do
  # Automatic Ruby code style checking tool. Aims to enforce the
  # community-driven Ruby Style Guide.
  gem 'rubocop', '~> 0.47.1'
  # Utility to install, configure, and extend Git hooks
  gem 'overcommit', '~> 0.36.0'
  # Reek is a tool that examines Ruby classes, modules and methods and reports
  # any code smells it finds.
  gem 'reek', '~> 4.4', '>= 4.4.1'
  # Brakeman detects security vulnerabilities in Ruby on Rails applications via
  # static analysis.
  gem 'brakeman', '~> 3.4'
  gem 'haml_lint', '~> 0.23.2'
  # RubyCritic is a tool that wraps around various static analysis gems to
  # provide a quality report of your Ruby code.
  gem 'rubycritic', '~> 3.2'
  # Preloads your application so things like console, rake and tests run faster
  gem 'spring', '~> 2.0', '>= 2.0.1'
  gem 'html2haml', '~> 2.0.0'
end

group :production, :test do
  gem 'uglifier', '~> 3.0', '>= 3.0.3'
end
