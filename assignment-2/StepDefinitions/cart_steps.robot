*** Settings ***
Resource          ../pages/cart_page.robot

*** Keywords ***
Verify cart page is opened and continue to checkout
    Cart page is opened
    Go to checkout