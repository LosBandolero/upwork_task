require 'selenium-webdriver'
class MainPage

  def initialize(url)
    @driver = Selenium::WebDriver.for :firefox, marionette: true
    # @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.navigate.to url
  end

  def fill_freelancer(freelancer)
    elts = @driver.find_elements(:class, 'form-control')
    elts[2].send_keys(freelancer)
  end

  def click_magnifier
    @driver.find_element(:class, '.glyphicon.air-icon-search.m-sm-left.m-0-right').click
  end

  def close_browser
    @driver.quit
  end

end
