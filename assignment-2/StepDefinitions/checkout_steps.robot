*** Settings ***
Resource          ../pages/checkout_step_one_page.robot
Resource          ../pages/checkout_step_two_page.robot
Resource          ../pages/checkout_complete_page.robot

*** Keywords ***
Verify checkout step one is opened
    Checkout step one page is opened

Input the the checkout information and continue checkout
    [Arguments]     ${firstname}    ${lastname}    ${zipcode}
    Input checkout information    ${firstname}    ${lastname}    ${zipcode}
    Continue checkout

Verify the checkout overview
    Checkout overview is displayed

Complete the checkout
    Click finish checkout

Verify checkout complete page is displayed
    Checkout complete page is displayed

Go back to home
    Click button back to home