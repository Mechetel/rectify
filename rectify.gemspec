# frozen_string_literal: true

require_relative 'lib/rectify/version'

Gem::Specification.new do |spec|
  spec.name          = 'rectify'
  spec.version       = Rectify::VERSION
  spec.authors       = ['Andy Pike, Dmytro Khoma']
  spec.email         = ['dima.homa5@gmail.com']

  spec.summary       = 'Improvements for building Rails apps'
  spec.description   = 'Build Rails apps in a more maintainable way'
  spec.homepage      = 'https://github.com/Mechetel/rectify'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')

  spec.files         = Dir['LICENSE.txt', 'readme.md', 'lib/**/*']
  spec.license       = 'MIT'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Mechetel'
  spec.metadata['changelog_uri']   = 'https://github.com/Mechetel'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'actionpack',    '~> 7.1', '>= 7.1.3.4'
  spec.add_dependency 'activemodel',   '~> 7.1', '>= 7.1.3.4'
  spec.add_dependency 'activerecord',  '~> 7.1', '>= 7.1.3.4'
  spec.add_dependency 'activesupport', '~> 7.1', '>= 7.1.3.4'
  spec.add_dependency 'virtus',        '~> 2.0'
  spec.add_dependency 'wisper',        '~> 3.0'
end
