require 'bundler'
require 'rake'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

task default: :spec

desc 'Run all specs'
RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = 'spec/**/*_spec.rb'
end

desc 'Start an IRB session with the gem'
task :console do
  $LOAD_PATH.unshift File.expand_path('..', __FILE__)
  require 'hanzo'
  require 'irb'

  ARGV.clear
  IRB.start
end
