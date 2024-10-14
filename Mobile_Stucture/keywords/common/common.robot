*** Keywords ***
Open test application
    BuiltIn.Run Keyword If    '${platform}' == 'android'    Open android application
    ...    ELSE If    '${platform}' == 'ios'        Open ios application

Open android application
    AppiumLibrary.Open application    ${device_setup.remote_url}  
    ...    deviceName=${device_setup.device_name}    
    ...    platformVersion=${device_setup.platform_version}    
    ...    platformName=${device_setup.platform_name}   
    ...    appPackage=${device_setup.app_package}    
    ...    appActivity=${device_setup.app_activity}

Open ios application
    ${capability}=    BuiltIn.Create dictionary    automation=${device_setup.automation}    
    ...    platformName=${device_setup.platform_name}    
    ...    platformVersion=${device_setup.platform_version}   
    ...    bundleId=${device_setup.bundle_id}    
    ...    deviceName=${device_setup.device_name}
    AppiumLibrary.Open application    ${device_setup.remote_url}    &{capability}
 
Wait and tap when visible
    [Arguments]    ${locator}
    AppiumLibrary.Wait until page contains element    ${locator}    ${device_setup.wait_time}
    AppiumLibrary.Click element    ${locator}

Is visible
    [Arguments]    ${locator}
    ${result}=    BuiltIn.Run keyword and return status    AppiumLibrary.Element should be visible    ${locator}
    RETURN    ${result}  

Flick down
    AppiumLibrary.Flick    ${device_setup.x_begin}    ${device_setup.y_begin}    ${device_setup.x_end}    ${device_setup.y_end}