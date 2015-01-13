# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geo-calculator/version'

Gem::Specification.new do |spec|
  spec.name          = 'geo-calculator'
  spec.version       = GeoCalculator::VERSION
  spec.authors       = ['Ryan MacInnes']
  spec.email         = ['ryan.macinnes@gmail.com']
  spec.description   = %q{Use ruby geocoder calculation methods without geocoding}
  spec.summary       = %q{This gem uses the ruby geocoder gem calculation methods to allow calculation of nearby locations without needing all the geocoding code.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'activerecord'
end
