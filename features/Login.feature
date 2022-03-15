Feature: Verify login functionality


@SC001
Scenario: User login using valid credentials
Given user already in login screen
When user input username
And user input password
And user click login button
Then dashboard screen should be appears
And user click logout button
Then user should redirect to login screen


@SC002
Scenario: User login with empty username
Given user already in login screen
And user input password
And user click login button
Then username failed notification should be appears


@SC003
Scenario: User login with empty password
Given user already in login screen
And user input username
And user click login button
Then password failed notification should be appears


@SC004
Scenario: User login with wrong credentials
Given user already in login screen
And user input username
And user input wrong password
And user click login button
Then invalid notification should be appears