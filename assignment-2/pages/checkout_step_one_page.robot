*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${C_PAGE_TITLE}                     //span[@class='title']
${C_FRIST_NAME}                     //input[@id='first-name']
${C_LAST_NAME}                      //input[@id='last-name']
${C_ZIP_CODE}                       //input[@id='postal-code']
${C_BTN_CANCEL}                     //button[@id='cancel']
${C_BTN_CONTINUE}                   //input[@id='continue']
${C_BADGE_CART}                     //span[@class='shopping_cart_badge']

*** Keywords ***
Checkout step one page is opened
    Wait Until Element Is Visible            ${C_PAGE_TITLE}
    Wait Until Element Is Visible            ${C_FRIST_NAME}
    Wait Until Element Is Visible            ${C_LAST_NAME}
    Wait Until Element Is Visible            ${C_ZIP_CODE}
    Wait Until Element Is Visible            ${C_BTN_CANCEL}
    Wait Until Element Is Visible            ${C_BTN_CONTINUE}
    Wait Until Element Is Visible            ${C_BADGE_CART}

Input checkout information
    [Arguments]     ${firstname}    ${lastname}    ${zipcode}
    Wait Until Element Is Visible            ${C_FRIST_NAME}
    Input Text                               ${C_FRIST_NAME}    ${firstname}
    Wait Until Element Is Visible            ${C_LAST_NAME}
    Input Text                               ${C_LAST_NAME}     ${lastname}
    Wait Until Element Is Visible            ${C_ZIP_CODE}
    Input Text                               ${C_ZIP_CODE}      ${zipcode}

 Continue checkout
    Wait Until Element Is Visible            ${C_BTN_CONTINUE}
    Click Element                            ${C_BTN_CONTINUE}