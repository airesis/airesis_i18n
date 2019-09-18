# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'airesis_i18n/version'

Gem::Specification.new do |spec|
  spec.name = 'airesis_i18n'
  spec.version = AiresisI18n::VERSION
  spec.authors = ['Alessandro Rodi']
  spec.email = ['coorasse@gmail.com']

  spec.summary = 'A collection of translations for Airesis.'
  spec.description = 'Airesis contains only English as default language. This gem contains all the other languages.'
  spec.homepage = 'https://github.com/airesis/airesis_i18n'
  spec.license = 'MIT'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files config -z`.split("\x0")
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'crowdin-api'
  spec.add_development_dependency 'i18n-tasks', '~> 0.9.29'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubyzip'
end
