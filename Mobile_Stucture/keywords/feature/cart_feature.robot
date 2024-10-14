*** Keywords ***
Open cart and check items
    cart_page.Tap to open cart
    ${result}=    BuiltIn.Run keyword and continue on failure    cart_page.Check items in cart
    BuiltIn.Log to console    Result: ${result}

Clear cart
    ${is_visible}=    common.Is visible    ${cart_locator.no_item}
    WHILE    ${is_visible} == False
        ${is_visible}=    common.Is visible    ${cart_locator.no_item} 
        BuiltIn.Run keyword if    ${is_visible} == False    cart_page.Tap to drop item
    END