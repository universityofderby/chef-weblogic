require 'bundler/setup'
require 'stove/rake_task'

namespace :style do
  require 'rubocop/rake_task'
  desc 'Run Ruby style checks'
  RuboCop::RakeTask.new(:ruby) do |t|
    t.formatters = ['simple']
  end

  require 'foodcritic'
  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |f|
    f.options =  { tags: ['~FC016'] }
  end
end

desc 'Run all style checks'
task style: ['style:chef', 'style:ruby']

require 'rspec/core/rake_task'
desc 'Run ChefSpec unit tests'
RSpec::Core::RakeTask.new(:unit) do |t|
  t.rspec_opts = '--color --format documentation'
end

# require 'kitchen'
# desc 'Run Test Kitchen integration tests'
# task :integration do
#  Kitchen.logger = Kitchen.default_file_logger
#  Kitchen::Config.new.instances.each do |instance|
#    instance.test(:always)
#  end
# end

# We cannot run Test Kitchen on Jenkins yet...
namespace :jenkins do
  desc 'Run tests on Jenkins'
  task ci: %w(style)
end

# The default rake task should just run it all
task default: %w(style)

Stove::RakeTask.new
