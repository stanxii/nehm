# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nehm/version'

Gem::Specification.new do |spec|
  spec.name          = 'nehm'
  spec.version       = Nehm::VERSION
  spec.authors       = ['Albert Nigmatzianov']
  spec.email         = ['albertnigma@gmail.com']

  spec.summary       = %q{ Convenient way to get tracks from SoundCloud via terminal }
  spec.description   = %q{ nehm is a console tool, which downloads, sets IDv3 tags and adds to your iTunes library your SoundCloud posts or likes in convenient way. See http://www.github.com/bogem/nehm for instructions }
  spec.homepage      = 'http://www.github.com/bogem/nehm'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = 'nehm'
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9'

  spec.add_development_dependency 'bundler',     '>= 1.10.5'
  spec.add_dependency             'soundcloud',  '>= 0.3.2'
  spec.add_dependency             'taglib-ruby', '>= 0.7.0'
  spec.add_dependency             'faraday',     '>= 0.9.1'
  spec.add_dependency             'highline',    '>= 1.7.2'
end