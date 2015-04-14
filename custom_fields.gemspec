$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "custom_fields/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "custom_fields"
  s.version     = CustomFields::VERSION
  s.authors     = ["Ben Polinsky"]
  s.email       = ["benjamin.polinsky@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CustomFields."
  s.description = "TODO: Description of CustomFields."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
