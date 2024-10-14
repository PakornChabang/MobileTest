*** Keywords ***
Get product locator
    [Arguments]    ${test01.product_name}
    ${new_locator}    String.replace string    ${home_locator.product}    
    ...    %&product&%    ${test01.product_name}
    RETURN    ${new_locator}        
Tap on product
    [Arguments]    ${new_locator}
    common.Wait and tap when visible    ${new_locator}

Scroll to product
    [Arguments]    ${new_locator}
    ${is_visible}=    common.Is visible    ${new_locator}
    
    WHILE    ${is_visible} == False
        ${is_visible}=    common.Is visible    ${new_locator}
        BuiltIn.Run Keyword If    ${is_visible} == False    common.Flick down
    END

Tap product
    [Arguments]    ${locator}
    ${location}=    AppiumLibrary.Get element location    ${locator}
    ${x}=    BuiltIn.Set variable    ${location['x']}
    ${y}=    BuiltIn.Set variable    ${location['y']}
    BuiltIn.Run keyword if    '${platform}' == 'android'    
    ...    AppiumLibrary.Click a point        ${x+100}    ${y-100}    ${press_time}
    ...    ELSE    
    ...    AppiumLibrary.Click element    ${locator}