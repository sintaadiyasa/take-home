*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${PAGE_TITLE}                //span[@class='title']
${CART_QTY}                  //div[@class='cart_quantity']
${PRODUCT_NAME}              //div[@class='inventory_item_name']
${PRODUCT_DESC}              //div[@class='inventory_item_desc']
${PRODUCT_PRICE}             //div[@class='inventory_item_price']
${PAYMENT_INFO_VALUE}        //div[@data-test='payment-info-value']
${SHIPPING_INFO_VALUE}       //div[@data-test='shipping-info-value']
${SUB_TOTAL}                 //div[@data-test='subtotal-label']
${TAX}                       //div[@data-test='tax-label']
${TOTAL_PRICE}               //div[@data-test='total-label']
${BTN_CANCEL}                //button[@id='cancel']
${BTN_FINISH}                //button[@id='finish']

*** Keywords ***
Checkout overview is displayed
    Wait Until Element Is Visible            ${PAGE_TITLE}
    Wait Until Element Is Visible            ${CART_QTY}
    Wait Until Element Is Visible            ${PRODUCT_NAME}
    Wait Until Element Is Visible            ${PRODUCT_DESC}
    Wait Until Element Is Visible            ${PRODUCT_PRICE}
    Wait Until Element Is Visible            ${PAYMENT_INFO_VALUE}
    Wait Until Element Is Visible            ${SHIPPING_INFO_VALUE}
    Wait Until Element Is Visible            ${SUB_TOTAL}
    Wait Until Element Is Visible            ${TAX}
    Wait Until Element Is Visible            ${TOTAL_PRICE}
    Wait Until Element Is Visible            ${BTN_CANCEL}
    Wait Until Element Is Visible            ${BTN_FINISH}

Click finish checkout
    Wait Until Element Is Visible            ${BTN_FINISH}
    Click Element                            ${BTN_FINISH}