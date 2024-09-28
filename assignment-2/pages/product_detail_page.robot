*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${BTN_BACK}                        //button[@id='back-to-products']
${BTN_CART}                        //a[@class='shopping_cart_link']
${PRODUCT_DETAIL_IMG}              //img[@class='inventory_details_img']
${PRODUCT_DETAIL_NAME}             //div[@class='inventory_details_name large_size']
${PRODUCT_DETAIL_DESC}             //div[@class='inventory_details_desc large_size']
${PRODUCT_DETAIL_PRICE}            //div[@class='inventory_details_price']
${BTN_ADD_TO_CART}                 //button[@id='add-to-cart']
${BADGE_CART}                      //span[@class='shopping_cart_badge']
${BTN_REMOVE}                      //button[@id='remove']

*** Keywords ***
Product detail page is opened
    Wait Until Element Is Visible        ${BTN_BACK}
    Wait Until Element Is Visible        ${BTN_CART}
    Wait Until Element Is Visible        ${PRODUCT_DETAIL_IMG}
    Wait Until Element Is Visible        ${PRODUCT_DETAIL_NAME}
    Wait Until Element Is Visible        ${PRODUCT_DETAIL_DESC}
    Wait Until Element Is Visible        ${PRODUCT_DETAIL_PRICE}
    Wait Until Element Is Visible        ${BTN_ADD_TO_CART}

Click button add to cart
    Wait Until Element Is Visible        ${BTN_ADD_TO_CART}
    Click Element                        ${BTN_ADD_TO_CART}

Success adding product to cart
    Wait Until Element Is Visible        ${BADGE_CART}
    Wait Until Element Is Visible        ${BTN_REMOVE}

Click icon cart
    Wait Until Element Is Visible        ${BADGE_CART}
    Click Element                        ${BADGE_CART}