*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${LOGIN_PAGE}      https://www.saucedemo.com/

*** Keywords ***
Open login page using chrome browser
    Open Browser        ${LOGIN_PAGE}        Chrome
    Maximize Browser Window