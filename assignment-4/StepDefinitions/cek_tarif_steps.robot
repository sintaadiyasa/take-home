*** Settings ***
Resource          ../resources.robot
Resource          ../pages/cek_tarif_page.robot

*** Keywords ***
Verify shipping rates checker page
    Display cek tarif page

Search the subdistrict origin
    [Arguments]     ${subdistrict}
    Click subdistrict origin
    Display serach subdistrict page
    Input subdistrict    ${subdistrict}
    Select the subdistrict origin result

Search the subdistrict destination
    [Arguments]     ${subdistrict}
    Click subdistrict destination
    Display serach subdistrict page
    Input subdistrict    ${subdistrict}
    Select the subdistrict destination result

Display shipping rate price
    Click button cek tarif
    Shipping rate price info    