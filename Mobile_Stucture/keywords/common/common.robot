*** Settings ***
Library    AppiumLibrary
*** Keywords ***
Open test application
    Open Application    remote_url=http://localhost:4723/wd/hub    
    ...    deviceName=TestDevice    
    ...    platformVersion=11.0    
    ...    platformName=Android    
    ...    appPackage=com.saucelabs.mydemoapp.android    
    ...    appActivity=com.saucelabs.mydemoapp.android.view.activities.SplashActivity
Open ios application
    ${capability}    Create Dictionary    automation=XCUItest    platformName=ios    platformVersion=18.0    bundelId=com.saucelabs.mydemo.app.ios    deviceName=iPhone 16 Product
    Open Application    remote_url=http://localhost:4723/wd/hub    &{capability}
    
Wait and tap when visible
    [Arguments]    ${locator}
    AppiumLibrary.wait until page contains element    ${locator}    ${setup.wait_time}
    AppiumLibrary.tap    ${locator}