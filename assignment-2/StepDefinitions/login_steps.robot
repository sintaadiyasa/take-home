*** Settings ***
Resource          ../pages/login_page.robot

*** Keywords ***
Go to login page
    Login page opened

Login using username and password
    [Arguments]   ${username}   ${password}
    Input username            ${username}
    Input password            ${password}
    Click login button
        