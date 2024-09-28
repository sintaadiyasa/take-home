*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${PAGE_TITLE}                //span[@class='title']
${CART_QTY}                  //div[@class='cart_quantity']
${PRODUCT_NAME}              //div[@class='inventory_item_name']
${PRODUCT_DESC}              //div[@class='inventory_item_desc']
${PRODUCT_PRICE}             //div[@class='inventory_item_price']
${BTN_REMOVE_CART}           //button[@class='btn btn_secondary btn_small cart_button']
${BTN_CONTINUE_SHOPPING}     //button[@id='continue-shopping']
${BTN_CHECKOUT}              //button[@id='checkout']

*** Keywords ***
Cart page is opened
    Wait Until Element Is Visible            ${PAGE_TITLE}
    Wait Until Element Is Visible            ${CART_QTY}
    Wait Until Element Is Visible            ${PRODUCT_NAME}
    Wait Until Element Is Visible            ${PRODUCT_DESC}
    Wait Until Element Is Visible            ${PRODUCT_PRICE}
    Wait Until Element Is Visible            ${BTN_REMOVE_CART}
    Wait Until Element Is Visible            ${BTN_CONTINUE_SHOPPING}
    Wait Until Element Is Visible            ${BTN_CHECKOUT}

Go to continue shopping
    Wait Until Element Is Visible            ${BTN_CONTINUE_SHOPPING}
    Click Element                            ${BTN_CONTINUE_SHOPPING}

Go to checkout
    Wait Until Element Is Visible            ${BTN_CHECKOUT}
    Click Element                            ${BTN_CHECKOUT}
