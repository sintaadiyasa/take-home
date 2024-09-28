*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${WEB_LOGO}              //div[@class='login_logo']
${USERNAME_FIELD}        //input[@id='user-name']
${PASSWORD_FIELD}        //input[@id='password']
${LOGIN_BUTTON}          //input[@id='login-button']
${ERROR_MESSAGE}        //h3[normalize-space()='Epic sadface: Username is required']
${BTN_CLOSE_USERNAME}    //div[@class='login-box']//div[1]//*[name()='svg']
${BTN_CLOSE_PASSWORD}    ///div[@class='login_wrapper-inner']//div[2]//*[name()='svg']

*** Keywords ***
Login page opened
    Wait Until Element Is Visible        ${WEB_LOGO}
    Wait Until Element Is Visible        ${USERNAME_FIELD}
    Wait Until Element Is Visible        ${USERNAME_FIELD}

Input username
    [Arguments]                          ${username}
    Wait Until Element Is Enabled        ${USERNAME_FIELD}
    Input Text                           ${USERNAME_FIELD}    ${username}

Input password   
    [Arguments]                          ${password}
    Wait Until Element Is Enabled        ${PASSWORD_FIELD}
    Input Text                           ${PASSWORD_FIELD}    ${password} 

Click login button
    Wait Until Element Is Enabled        ${LOGIN_BUTTON}
    Click Element                        ${LOGIN_BUTTON}