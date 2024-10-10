*** Keywords ***
Open test application
    Run Keyword If    '${platform}' == 'android'    Open android application
    ...    ELSE    Open ios application

Open android application
    AppiumLibrary.Open Application    ${device_setup.remote_url}  
    ...    deviceName=${device_setup.device_name}    
    ...    platformVersion=${device_setup.platform_version}    
    ...    platformName=${device_setup.platform_name}   
    ...    appPackage=${device_setup.app_package}    
    ...    appActivity=${device_setup.app_activity}

Open ios application
    ${capability}=    Create Dictionary    automation=${device_setup.automation}    
    ...    platformName=${device_setup.platform_name}    
    ...    platformVersion=${device_setup.platform_version}   
    ...    bundleId=${device_setup.bundle_id}    
    ...    deviceName=${device_setup.device_name}
    AppiumLibrary.Open Application    ${device_setup.remote_url}    &{capability}
 
Wait and tap when visible
    [Arguments]    ${locator}
    AppiumLibrary.wait until page contains element    ${locator}    ${device_setup.wait_time}
    AppiumLibrary.click element    ${locator}