*** Settings ***
Resource          ../resources.robot
Resource          ../pages/on_boarding_page.robot

*** Keywords ***
Agree on term and condition
    Term is opened
    Click button agree

Skip on boarding
    On boarding page is opened
    Click button skip