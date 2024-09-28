*** Settings ***
Resource          ../pages/inventory_page.robot

*** Keywords ***
Verify invetory page is opened
    Inventory page opened

Go to product detail page
    [Arguments]    ${name}
    Inventory page opened
    Click product with name    ${name}