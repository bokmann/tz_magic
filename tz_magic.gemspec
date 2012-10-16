$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tz_magic/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tz_magic"
  s.version     = TzMagic::VERSION
  s.authors     = ["David Bock"]
  s.email       = ["dbock@codesherpas.com"]
  s.homepage    = "https://www.github.com/bokmann/tz_magic"
  s.summary     = "Rails engine to simplify grabbing the timezone of the user's browser."
  s.description = "Rails engine to simplify grabbing the timezone of the user's browser."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "sqlite3"
end
