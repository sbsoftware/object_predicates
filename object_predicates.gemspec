require_relative 'lib/object_predicates/version'

Gem::Specification.new do |s|
  s.name = 'object_predicates'
  s.version = ObjectPredicates::VERSION
  s.summary = 'Define predicates for object properties to be evaluated in various ways'
  s.description = 'Define predicates for object properties that can be directly evaluated for a single object or converted to an ActiveRecord scope'
  s.homepage = 'https://github.com/sbsoftware/object_predicates'
  s.files = Dir['lib/**/*.rb']
  s.authors = ['Stefan Bilharz']
  s.email = 'stefan@sbsoftware.de'
  s.license = 'MIT'

  s.required_ruby_version = '>= 2.4'
end
