source 'https://rubygems.org'

gem 'quke',
    git: 'https://github.com/DEFRA/quke',
    branch: 'master'

# Rake gives us the ability to create our own commands or 'tasks' for working
# with quke. We have it setup to start the demo app and to clear the /tmp for
# example. You could expand it to run particular config files, and if you have
# particular arguments you normally like to pass to Cucumber.
gem 'rake'

################################################################################
# The rest of the gems listed below are required by the demo app only. You can
# ignore them in your own Gemfile

# Sinatra is a DSL for quickly creating web applications in Ruby with minimal
# effort. We've used it for creating our embedded demo website
gem 'sinatra'

# This groups covers gems which should be installed if you are actively working
# on Quke-example itself.
group :development do
  # To enable reloading of the app whilst working on it you can use Rerun
  # https://github.com/alexch/rerun
  # http://www.sinatrarb.com/faq.html#reloading
  # `rerun quke_demo_app/app.rb`
  # There is also a custom rake task as part of Quke to launch the demo app
  # which will use rerun if installed `bundle exec rake run`
  gem 'rerun'
end
