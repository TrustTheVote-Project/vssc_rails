$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "vedastore/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "VEDaStore"
  s.version     = Vedastore::VERSION
  s.authors     = ["Alex Mekelburg"]
  s.email       = ["alex.mekelburg@gmail.com"]
  s.homepage    = "https://github.com/trustthevote-project/VEDaStore"
  s.summary     = "Parser and DB structure for NIST ERR election data schema"
  s.description = "Parses Nist Err election data schema and saves to the DB. Exports from the DB into valid NIST ERR format."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency "nokogiri", "~> 1.6.0"
  s.add_dependency "vedaspace", "~> 1.0.0"

  s.add_development_dependency "mysql2"
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'rspec-rails', '~> 3.0'
  
  
end
