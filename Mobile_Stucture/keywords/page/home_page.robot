*** Keywords ***
Scroll to product
    [Arguments]    ${test01.product_name}
    ${new_locator}    String.Replace string    ${home_locator.product}    
    ...    %&product&%    ${test01.product_name}
    ${is_visible}=    common.Is visible    ${new_locator}   
    WHILE    ${is_visible} == False
        ${is_visible}=    common.Is visible    ${new_locator}
        BuiltIn.Run Keyword If    ${is_visible} == False    common.Flick down
    END

Tap product
    [Arguments]    ${test01.product_name}
    ${locator}    String.Replace string    ${home_locator.product}    
    ...    %&product&%    ${test01.product_name}
    ${location}=    AppiumLibrary.Get element location    ${locator}
    ${x}=    BuiltIn.Set variable    ${location['x']}
    ${y}=    BuiltIn.Set variable    ${location['y']}
    BuiltIn.Run keyword if    '${platform}' == 'android'    
    ...    AppiumLibrary.Click a point        ${x+100}    ${y-100}    ${setup.press_time}
    ...    ELSE    AppiumLibrary.Click element    ${locator}