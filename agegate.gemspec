$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "agegate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "agegate"
  s.version     = Agegate::VERSION
  s.authors     = ["Francesco Grammatico"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = "Provide an agegate."
  s.description = "This rails engine provide an agegate in front of your website."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency 'pry'
  s.add_development_dependency 'awesome_print'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rb-fsevent'
  s.add_development_dependency 'growl'

  s.add_development_dependency 'sqlite3'

  s.test_files = Dir["spec/**/*"]
end
