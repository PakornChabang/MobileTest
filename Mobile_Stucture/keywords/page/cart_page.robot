*** Keywords ***
Tap add to cart button
    common.Wait and tap when visible   ${cart_locator.add_to_cart_btn}

Tap to open cart
    common.Wait and tap when visible    ${cart_locator.cart_btn}  

Check items in cart
    AppiumLibrary.Wait until page contains element    ${cart_locator.display_items_count}    ${setup.wait_time}
    ${item_count}=    AppiumLibrary.Get text    ${cart_locator.display_items_count}
    builtIn.Should be equal    ${item_count}    ${test01.item_count_checker}

Tap to drop item
    common.Wait and tap when visible    ${cart_locator.remove_item_btn}

Tap back to shopping
    common.Wait and tap when visible    ${cart_locator.shopping_btn}