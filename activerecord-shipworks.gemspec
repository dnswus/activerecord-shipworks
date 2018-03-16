$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "shipworks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activerecord-shipworks"
  s.version     = Shipworks::VERSION
  s.authors     = ["Dennis Wu"]
  s.email       = ["dennissfwu@gmail.com"]
  s.homepage    = "https://github.com/dnswus/activerecord-shipworks"
  s.summary     = "ActiveRecord for Shipworks."
  s.description = "ActiveRecord for Shipworks."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.5"

  s.add_dependency "activerecord-sqlserver-adapter"
end
