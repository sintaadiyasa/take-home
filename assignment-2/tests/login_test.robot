*** Settings ***
Resource          ../resources.robot
Resource          ../pages/login_page.robot
Resource          ../pages/inventory_page.robot
Resource          ../StepDefinitions/login_steps.robot
Test Setup        Open login page using chrome browser
Test Teardown     Close Browser

*** Variables ***
${valid_username}            standard_user
${valid_password}            secret_sauce

*** Test Cases ***
Valid login
    GIVEN Go to login page
    WHEN Login using username and password    ${valid_username}    ${valid_password}
    THEN Inventory page opened