*** Settings ***
Library    AppiumLibrary
Library    DebugLibrary
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
    ${is_visible}=    Is Visible    ${new_locator}
    
    WHILE    ${is_visible} == False
        ${is_visible}=    Is Visible    ${new_locator}
        Run Keyword If    ${is_visible} == False    AppiumLibrary.Flick    100    500    100    100    #flickdown
    END
    #AppiumLibrary.Flick    50    50    50    200
    #AppiumLibrary.scroll up        xpath=//android.widget.TextView[@content-desc="Product Title" and @text="Sauce Labs Bolt T-Shirt"]

Is visible
    [Arguments]    ${locator}
    ${result}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
    RETURN    ${result}  


Tap above element
    [Arguments]    ${locator}
    ${location}=    Get Element Location    ${locator}
    ${x}=    Set Variable    ${location['x']}
    ${y}=    Set Variable    ${location['y']}
    Log To Console    ${y}
    ${y}=    BuiltIn.Evaluate    ${y} -100
    Click A Point       ${x}    ${y}     500