*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${PAGE_TITLE}                //span[@class='title']
${ICON_SUCCESS}              //img[@class='pony_express']
${COMPLETE_HEADER}           //h2[@class='complete-header']
${COMPLETE_TEXT}             //div[@class='complete-text']
${BTN_BACK_HOME}             //button[@id='back-to-products']

*** Keywords ***
Checkout complete page is displayed
    Wait Until Element Is Visible            ${PAGE_TITLE}
    Wait Until Element Is Visible            ${ICON_SUCCESS}
    Wait Until Element Is Visible            ${COMPLETE_HEADER}
    Wait Until Element Is Visible            ${COMPLETE_TEXT}
    Wait Until Element Is Visible            ${BTN_BACK_HOME}

Click button back to home
    Wait Until Element Is Visible            ${BTN_BACK_HOME}
    Click Element                            ${BTN_BACK_HOME} 