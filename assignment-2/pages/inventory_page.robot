*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${LOGO}                        //div[@class='app_logo']
${PRODUCT_SORT}                //select[@class='product_sort_container']
${TITLE_PAGE}                  //span[@class='title']
${PRODUCTS}                    //div[@class='inventory_item']
${PRODUCTS_NAME}               //div[@class='inventory_item_name ']
${PRODUCT_IMAGE}               //div[@class='inventory_item_img']
${BTN_ADD_TO_CART}             //button[contains(text(), 'Add to cart')]
${PRODUCT_1}                   //div[@class='inventory_item_img']//a//img[@alt='Sauce Labs Backpack']

*** Keywords ***
Inventory page opened
    Wait Until Element Is Visible        ${LOGO}
    Wait Until Element Is Visible        ${PRODUCT_SORT}
    Wait Until Element Is Visible        ${TITLE_PAGE}
    Wait Until Element Is Visible        ${PRODUCTS}
    Wait Until Element Is Visible        ${PRODUCTS_NAME}
    Wait Until Element Is Visible        ${PRODUCT_IMAGE}
    Wait Until Element Is Visible        ${BTN_ADD_TO_CART}

Click product with name
    [Arguments]    ${name}
    Wait Until Element Is Visible        ${PRODUCT_IMAGE}//a//img[@alt='${name}']
    Click Element                        ${PRODUCT_IMAGE}//a//img[@alt='${name}']