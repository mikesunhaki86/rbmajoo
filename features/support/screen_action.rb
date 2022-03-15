
def open_url(url)
    $driver.navigate.to url
end


def maximize_browser()
    $driver.manage.window.maximize
end

def minimize_browser()
    $driver.manage.window.minimize
end


def waiting(int)
    $driver.manage.timeouts.implicit_wait = int
end

def verifyLoginScreen()   ### Verify the login page has appeared
    login_screen = $driver.find_element(:id, 'logInPanelHeading').text
    if login_screen == "LOGIN Panel"
        log("Login screen appears")
    end    
    sleep(2)
end

def verifyDashboardScreen()   ### Verify the dashboard page has appeared
    db_screen = $driver.find_element(:id, 'menu_dashboard_index').text
    if db_screen == "Dashboard"
        log("Login success")
    end    
    sleep(2)
end

def usernameLogin(name)   ### Input username field
    $driver.find_element(:id, 'txtUsername').click
    sleep(2)
    $driver.find_element(:id, 'txtUsername').send_keys(name)
    sleep(2)
end

def passwordLogin(password)   ### Input password field
    $driver.find_element(:id, 'txtPassword').click
    sleep(2)
    $driver.find_element(:id, 'txtPassword').send_keys(password)
    sleep(2)
end

def loginButton()   ### Click on login button
    $driver.find_element(:id, 'btnLogin').click
    sleep(5)
end

def logoutButton()   ### Process to logout
    $driver.find_element(:id, 'welcome').click
    sleep(2)
    $driver.find_element(:xpath, '//div[@id="welcome-menu"]/ul/li[3]/a').click
    sleep(10)
end    

def failedPassNotif()   ### Verify notification text appears if user didn't fill the password field
    pass_notif = $driver.find_element(:id, 'spanMessage').text
    if pass_notif == "Password cannot be empty"
        log("Password cannot be empty")
    end    
    sleep(2)
end

def failedUsernameNotif()   ### Verify notification text appears if user didn't fill the username field
    user_notif = $driver.find_element(:id, 'spanMessage').text
    if user_notif == "Username cannot be empty"
        log("Username cannot be empty")
    end    
    sleep(2)
end

def wrongFieldNotif()   ### Verify notification text appears if user login with invalid credentials
    w_notif = $driver.find_element(:id, 'spanMessage').text
    if w_notif == "Invalid credentials"
        log("Invalid credentials")
    end    
    sleep(2)
end