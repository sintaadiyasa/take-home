*** Settings ***
Resource          ../pages/product_detail_page.robot

*** Keywords ***
Verify product detail is opened
    Product detail page is opened

Add the product to cart from product detail
    Click button add to cart

Verify success add product to cart and go to cart
    Success adding product to cart
    Click icon cart