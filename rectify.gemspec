require File.expand_path('../lib/rectify/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'rectify'
  s.version       = Rectify::VERSION
  s.summary       = 'Improvements for building Rails apps'
  s.description   = 'Build Rails apps in a more maintainable way'
  s.authors       = ['Andy Pike, Dmytro Khoma']
  s.email         = 'dima.homa5@gmail.com'
  s.files         = Dir['LICENSE.txt', 'readme.md', 'lib/**/*']
  s.homepage      = 'https://github.com/Mechetel/rectify'
  s.license       = 'MIT'
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 3.0.0'

  s.add_dependency 'actionpack',    '~> 7.1', '>= 7.1.3.4'
  s.add_dependency 'activemodel',   '~> 7.1', '>= 7.1.3.4'
  s.add_dependency 'activerecord',  '~> 7.1', '>= 7.1.3.4'
  s.add_dependency 'activesupport', '~> 7.1', '>= 7.1.3.4'
  s.add_dependency 'virtus',        '~> 2.0'
  s.add_dependency 'wisper',        '~> 3.0'

  s.metadata['rubygems_mfa_required'] = 'true'
end
