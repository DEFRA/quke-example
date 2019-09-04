# frozen_string_literal: true

desc 'Runs the demo web app (see :run)'
task default: %w[run]

desc 'Run demo web app (is the website against which the examples run)'
task :run do
  trap('SIGINT') { puts 'Quke demo app has finished'; exit }
  sh %( bundle exec quke_demo_app )
end

desc 'Delete all Capybara saved pages in the tmp directory'
task :clean do
  File.delete(*Dir.glob('tmp/capybara-*.html'))
end

require 'quke'

# Add support to quke to run the webdriver rake tasks
# https://github.com/titusfortner/webdrivers#rake-tasks
load 'quke/Rakefile'
