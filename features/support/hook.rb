Before do |scenario|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument("--window-size=1920,1080")
    options.add_argument("--start-maximized")
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    $driver = Selenium::WebDriver.for :chrome, options: options
    $driver.manage.window.maximize
    open_url("https://opensource-demo.orangehrmlive.com/")
    sleep(10)
end


After do |scenario|
    if scenario.failed?
        screenshot = $driver.save_screenshot("ss/Failed - #{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png")
        attach("ss/Failed - #{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png", "image/png")
    end
    $driver.quit
end

#After do
    #$driver.quit
#end