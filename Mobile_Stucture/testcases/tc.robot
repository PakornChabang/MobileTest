*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Test Setup    common.Open test application
Test Teardown    common.Close app
*** Test Cases ***
Add product and check item in cart
    home_feature.Scroll to product and tap    ${test01.product_name}
    cart_page.Tap add to cart button
    cart_feature.Open cart and check items
    cart_feature.Clear cart