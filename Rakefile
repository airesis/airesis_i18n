require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "byebug"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

require 'airesis_i18n'
require 'erb'
require 'i18n/tasks'
require 'digest'

namespace :airesis_i18n do
  desc 'Update by retrieving the latest Airesis locale files'
  task :update do
    require 'open-uri'
    puts 'Fetching latest Airesis locale files'
    tmp_directory = File.join(File.dirname(__FILE__), 'tmp/airesis')
    FileUtils.mkdir_p(tmp_directory)
    system("git clone git@github.com:coorasse/airesis.git #{tmp_directory}")
    original_files = Dir[File.join(tmp_directory, '/config/locales/**/*.en-EU.yml')]
    original_files.each do |file|
      relative_path = Pathname.new(file).relative_path_from(Pathname.new(tmp_directory))
      FileUtils.cp(file, relative_path)
    end
    FileUtils.rm_rf tmp_directory
  end

  task :report do
    task = I18n::Tasks::BaseTask.new
    @missing = task.missing_keys

    report_directory = File.join(File.dirname(__FILE__), 'tmp/report')
    FileUtils.mkdir_p(report_directory)

    simple_template = File.read('report.html.erb')
    renderer = ERB.new(simple_template)
    File.write(File.join(report_directory, 'report.html'), renderer.result)
    system("open #{File.join(report_directory, 'report.html')}")
  end
end
