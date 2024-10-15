*** Variables ***
${cart_locator.add_to_cart_btn}        xpath=//android.widget.Button[@content-desc="Tap to add product to cart"]
${cart_locator.cart_btn}               xpath=//android.widget.ImageView[@content-desc="Displays number of items in your cart"]
${cart_locator.display_items_count}     xpath=//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/itemsTV"]
${cart_locator.remove_item_btn}     xpath=//android.widget.TextView[@content-desc="Removes product from cart"]
${cart_locator.no_item}     xpath=//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/noItemTitleTV"]
${cart_locator.shopping_btn}    xpath=//android.widget.Button[@resource-id="com.saucelabs.mydemoapp.android:id/shoppingBt"]