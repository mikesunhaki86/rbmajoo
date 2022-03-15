def save_screenshot(name)
    $driver.screenshot("ss/#{name}.png")
    attach("ss/#{name}.png","image/png")
end