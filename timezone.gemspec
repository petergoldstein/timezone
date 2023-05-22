# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)
require 'timezone/version'

Gem::Specification.new do |s|
  s.name        = 'timezone'
  s.version     = Timezone::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Pan Thomakos']
  s.email       = ['pan.thomakos@gmail.com']
  s.homepage    = 'https://github.com/panthomakos/timezone'
  s.summary     = "timezone-#{Timezone::VERSION}"
  s.license     = 'MIT'
  s.description = 'Accurate current and historical timezones for Ruby with ' \
                  'support for Geonames and Google latitude - longitude ' \
                  'lookups.'

  s.files       = `git ls-files`.split("\n")
  s.executables = `git ls-files -- bin/*`
    .split("\n").map { |f| File.basename(f) }

  s.extra_rdoc_files = ['README.markdown', 'License.txt']
  s.rdoc_options     = ['--charset=UTF-8']
  s.require_paths    = ['lib']

  s.required_ruby_version = '>= 2.2'

  s.add_development_dependency('minitest', '~> 5.8')
  s.add_development_dependency('rake', '~> 12')
  s.add_development_dependency('rubocop', '<= 1.51.0', '>= 0.5.1')
  s.add_development_dependency('rubocop-performance', '<= 1.18.0')
  s.add_development_dependency('timecop', '~> 0.8')
  s.metadata['rubygems_mfa_required'] = 'true'
end
