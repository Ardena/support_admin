$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "support_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "support_admin"
  s.version     = SupportAdmin::VERSION
  s.authors     = ["Mysti Sadler"]
  s.email       = ["mysti@instructure.com"]
  s.summary     = %q{Support Admin}
  s.description = %q{Ruby interface for interacting with database and performing specific tasks}
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  #s.add_dependency "rails", "~> 3.2.17"

  s.add_development_dependency "sqlite3"
  s.add_dependency "rubycas-client"
end
