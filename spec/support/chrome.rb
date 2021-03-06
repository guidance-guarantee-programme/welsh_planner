require 'webdrivers/chromedriver'
require 'selenium/webdriver'

Webdrivers::Chromedriver.required_version = '2.38'

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(args: %w[headless no-sandbox])

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.server = :puma, { Silent: true }
Capybara.javascript_driver = :chrome
