# frozen_string_literal: true

require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.register_driver :headless_chrome do |app|
    options = ::Selenium::WebDriver::Chrome::Options.new
    options.args << '--headless=new'
    options.args << '--disable-gpu'
    options.args << '--no-sandbox'
    options.args << '--window-size=1400,1400'

    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
    )
  end

  driven_by :headless_chrome
end
