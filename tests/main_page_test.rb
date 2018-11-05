require_relative '../pages/main_page.rb'

class MainPageTest

  browser = MainPage.new('http://upwork.com')
  browser.fill_freelancer('Saqulik')

  browser.click_magnifier

  browser.close_browser
end

