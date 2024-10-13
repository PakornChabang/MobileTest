*** Settings ***
Resource    ../page/home_page.robot
*** Keywords ***
Scroll to product and tap
    [Arguments]    ${test01.product_name}
    ${prod_locator}=    Get product locator    ${test01.product_name}
    home_page.Scroll to product    ${prod_locator}
    home_page.Tap above element   ${prod_locator}    