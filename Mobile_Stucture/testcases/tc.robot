*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
Add product and check item in cart
    common.Open test application
    home_page.Tap on product
    cart_page.Tap add to cart button
    cart_feature.Open cart and check items