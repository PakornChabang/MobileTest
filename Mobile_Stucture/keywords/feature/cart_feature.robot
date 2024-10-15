*** Keywords ***
Open cart and check items
    cart_page.Tap to open cart
    cart_page.Check items in cart

Clear cart and back to shopping
    cart_page.Tap to open cart  
    ${is_visible}=    common.Is visible    ${cart_locator.no_item}
    WHILE    ${is_visible} == False
        ${is_visible}=    common.Is visible    ${cart_locator.no_item} 
        BuiltIn.Run keyword if    ${is_visible} == False    cart_page.Tap to drop item
    END
    cart_page.Tap back to shopping