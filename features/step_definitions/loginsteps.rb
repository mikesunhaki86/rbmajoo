require_relative '../support/hook.rb'
require_relative '../support/screen_action.rb'

### SC001 VALID CREDENTIALS
Given('user already in login screen') do
    verifyLoginScreen()
end
  
When('user input username') do
    usernameLogin("Admin")
end
  
And('user input password') do
    passwordLogin("admin123")
end
  
And('user click login button') do
    loginButton()
end
  
Then('dashboard screen should be appears') do
    verifyDashboardScreen()
end
  
And('user click logout button') do
    logoutButton()
end
  
Then('user should redirect to login screen') do
    verifyLoginScreen()
end


### SC002 & SC003 EMPTY USERNAME AND PASSWORD
Then('username failed notification should be appears') do
    failedUsernameNotif()
end

Then('password failed notification should be appears') do
    failedPassNotif()
end


### SC001 VALID CREDENTIALS
And('user input wrong password') do
    passwordLogin("admin")
end

Then('invalid notification should be appears') do
    wrongFieldNotif()
end