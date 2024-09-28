*** Settings ***
Resource          ../resources.robot
Resource          ../StepDefinitions/home_steps.robot
Resource          ../StepDefinitions/on_boarding_steps.robot
Resource          ../StepDefinitions/cek_tarif_steps.robot
Test Setup        Open apps
Test Teardown     Close Application

*** Variables ***
${SUB_ORIGIN}              tebet
${SUB_DESTINATION}         grogol

*** Test Cases ***
As a user, I want to check shipping rates
    GIVEN Display the homepage
    AND Display the shipping rates checker page
    THEN Search the subdistrict origin    ${SUB_ORIGIN}
    THEN Search the subdistrict destination    ${SUB_DESTINATION}
    THEN Display shipping rate price

*** Keywords ***
Display the homepage
    # wait for app to be active
    Sleep    5s

    Agree on term and condition
    Skip on boarding

    Closing the lacak pop-up
    Closing boss pack pop-up if visible
    # Verify display the homepage

Display the shipping rates checker page 
    # wait for app to be clickable 
    Sleep    5s

    Go to menu cek tarif
    Verify shipping rates checker page