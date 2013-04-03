require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'billy/cucumber'

# Capybara.app = MyRackApp

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {
    debug: true, # Uncomment to log to STDERROR
    js_errors: false
  })
end

Capybara.javascript_driver = :poltergeist

# Billy.configure do |config|
#   config.logger = Logger.new(File.expand_path("../../../log/billy.log", __FILE__))
#   config.logger.level = Logger::DEBUG
# end