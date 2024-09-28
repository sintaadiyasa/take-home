*** Settings ***
Library    SeleniumLibrary
#Resource          ../pages/login_page.robot
#Resource          ../pages/inventory_page.robot
#Resource          ../pages/product_detail_page.robot
#Resource          ../pages/cart_page.robot
#Resource          ../pages/checkout_step_one_page.robot
#Resource          ../pages/checkout_step_two_page.robot
#Resource          ../pages/checkout_complete_page.robot
Resource          ../resources.robot
Resource          ../StepDefinitions/login_steps.robot
Resource          ../StepDefinitions/inventory_steps.robot
Resource          ../StepDefinitions/product_detail_steps.robot
Resource          ../StepDefinitions/cart_steps.robot
Resource          ../StepDefinitions/checkout_steps.robot
Test Setup        Open login page using chrome browser
Test Teardown     Close Browser

*** Variables ***
${VALID_USERNAME}                standard_user
${VALID_PASSWORD}                secret_sauce
${NAME}                      Sauce Labs Backpack
${FIRSTNAME}                 Sinta
${LASTNAME}                  Adiyasa
${ZIPCODE}                   57467

*** Test Cases ***
Checkout product
    GIVEN Login using valid credential        ${VALID_USERNAME}        ${VALID_PASSWORD}
    AND Add product to cart            ${NAME}
    WHEN Checkout with input valid checkout information    ${FIRSTNAME}        ${LASTNAME}    ${ZIPCODE}
    THEN Success checkout page is displayed, back to home    

*** Keywords ***
Login using valid credential
    [Arguments]   ${username}   ${password}
    Go to login page
    Login using username and password    ${username}    ${password}
    Verify invetory page is opened

Add product to cart
    [Arguments]   ${name}
    Go to product detail page    ${name}
    Verify product detail is opened
    Add the product to cart from product detail
    Verify success add product to cart and go to cart
    Verify cart page is opened and continue to checkout

Checkout with input valid checkout information
    [Arguments]        ${firstname}        ${lastname}    ${zipcode}
    Verify checkout step one is opened
    Input the the checkout information and continue checkout        ${firstname}        ${lastname}    ${zipcode}
    Verify the checkout overview
    Complete the checkout

Success checkout page is displayed, back to home
    Verify checkout complete page is displayed
    Go back to home
    Verify invetory page is opened