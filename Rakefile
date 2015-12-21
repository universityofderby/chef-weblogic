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

# The default rake task should just run it all
task default: %w(style)
