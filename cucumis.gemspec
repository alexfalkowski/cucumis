lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cucumis/version'

Gem::Specification.new do |spec|
  spec.name          = 'cucumis'
  spec.version       = Cucumis::VERSION
  spec.authors       = ['Alex Falkowski']
  spec.email         = ['alexrfalkowski@gmail.com']

  spec.summary       = 'Some handy tasty collection of cucumber gems and steps.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/alexfalkowski/cucumis'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'capybara-webkit', '>= 1.15.0'
  spec.add_dependency 'chromedriver-helper', '>= 1.0'
  spec.add_dependency 'cucumber', '>= 2.0'
  spec.add_dependency 'cucumber-timecop', '>= 0.0.6'
  spec.add_dependency 'poltergeist', '>= 1.17.0'
  spec.add_dependency 'rspec-expectations', '>= 3.0'
  spec.add_dependency 'selenium-webdriver', '>= 3.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
end
