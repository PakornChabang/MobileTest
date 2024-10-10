*** Keywords ***
Tap add to cart button
    common.Wait and tap when visible   ${cart_locator.add_to_cart_btn}

Tap to open cart
    common.Wait and tap when visible    ${cart_locator.cart_btn}

Check items in cart
    AppiumLibrary.wait until page contains element    ${cart_locator.display_items_count}    ${device_setup.wait_time}
    ${item_count}=    AppiumLibrary.get text    ${cart_locator.display_items_count}
    log to console    Current item count is: ${item_count}
    should be equal as numbers    ${item_count}    ${device_setup.item_count_checker}