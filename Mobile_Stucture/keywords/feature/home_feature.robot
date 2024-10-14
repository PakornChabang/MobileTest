*** Keywords ***
Scroll to product and tap
    [Arguments]    ${test01.product_name}
    ${prod_locator}=    home_page.Get product locator    ${test01.product_name}
    home_page.Scroll to product    ${prod_locator}
    home_page.Tap product  ${prod_locator}    