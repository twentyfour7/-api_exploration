# frozen_string_literal: true
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'kktix-api/version'

Gem::Specification.new do |s|
  s.name        =  'kktix-api'
  s.version     =  KktixEvent::VERSION

  s.summary     =  'Gets event content of an organization from KKTIX'
  s.description =  'Extracts the name, uri, and events informaiton of an organization'
  s.authors     =  ['JJC', 'Rollee Chen', 'shannywu']
  s.email       =  ['jjc@nlplab.cc']

  s.files       =  `git ls-files`.split("\n")
  s.test_files  =  `git ls-files -- spec/*`.split("\n")
  s.executables << 'kktix'

  s.add_runtime_dependency 'http', '~> 2.0'

  s.add_development_dependency 'minitest', '~> 5.9'
  s.add_development_dependency 'minitest-rg', '~> 5.2'
  s.add_development_dependency 'rake', '~> 11.3'
  s.add_development_dependency 'vcr', '~> 3.0'
  s.add_development_dependency 'webmock', '~> 2.1'
  s.add_development_dependency 'simplecov', '~> 0.12'
  s.add_development_dependency 'flog', '~> 4.4'
  s.add_development_dependency 'flay', '~> 2.8'
  s.add_development_dependency 'rubocop', '~> 0.42'

  s.homepage    =  'https://github.com/twentyfour7/kktix-api'
  s.license     =  'Apache'
end