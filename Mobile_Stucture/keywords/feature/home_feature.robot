*** Keywords ***
Scroll to product and tap
    [Arguments]    ${test01.product_name}
    home_page.Scroll to product    ${test01.product_name}
    home_page.Tap product  ${test01.product_name}