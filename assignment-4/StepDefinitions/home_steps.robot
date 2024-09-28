*** Settings ***
Resource          ../resources.robot
Resource          ../pages/home_page.robot

*** Keywords ***
Closing the lacak pop-up
    Sleep    20s
    Close lacak pop-up

Closing boss pack pop-up if visible
    Close boss pack pop-up

Verify display the homepage
    Homepage is displayed

Go to menu cek tarif
    Click menu icon cek tarif
