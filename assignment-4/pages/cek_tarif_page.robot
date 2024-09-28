*** Settings ***
Library                                     AppiumLibrary

*** Variables ***
${TIMEOUT}                                  5s
${PROMO_BANNER}          //android.widget.ImageView[@resource-id="com.lionparcel.services.consumer:id/ivBannerPromo"]
${ORIGIN}                //android.widget.EditText[@resource-id="com.lionparcel.services.consumer:id/edtOriginAddress"]
${DESTINATION}           //android.widget.EditText[@resource-id="com.lionparcel.services.consumer:id/edtDestinationAddress"]
${BTN_CEK_TARIF}         //android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnCheckTariff"]

${TXT_CARI_KECAMATAN}    //android.widget.EditText[@resource-id="com.lionparcel.services.consumer:id/edtRouteSearch"]
${IMG_DEFAULT}           //android.widget.ImageView[@content-desc="Ini merupakan sebuah gambar"]
${RESULT_ORIGIN_KECAMATAN}        //android.widget.LinearLayout[@resource-id="com.lionparcel.services.consumer:id/llOriginRoute"]
${RESULT_DESTINATION_KECAMATAN}    //android.widget.LinearLayout[@resource-id="com.lionparcel.services.consumer:id/llDestinationRoute"]

${TOTAL_WEIGHT}        //android.widget.EditText[@resource-id="com.lionparcel.services.consumer:id/edtTotalWeight"]
${BTN_TAMBAH_DETAIL_PAKET}        //android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnAddDetail"]

${PRICE_LIST}            //android.widget.ImageView[@resource-id="com.lionparcel.services.consumer:id/ivTariffBackGround"]
${TOTAL_TARIF_EST}        //android.widget.LinearLayout[@resource-id="com.lionparcel.services.consumer:id/llTotalTariffEstimation"]
${BTN_REQ_PICKUP}        //android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/buttonPickUp"]


*** Keywords ***
Display cek tarif page
    Wait Until Element Is Visible           ${PROMO_BANNER}
    #Page Should Contain Element             ${ORIGIN}
    #Page Should Contain Element             ${DESTINATION}
    # Wait Until Element Is Visible             ${BTN_CEK_TARIF}

Click subdistrict origin
    Click Element                           ${ORIGIN}

Click subdistrict destination
    Click Element                           ${DESTINATION}

Display serach subdistrict page
    Wait Until Element Is Visible           ${IMG_DEFAULT}
    Page Should Contain Element             ${TXT_CARI_KECAMATAN}

Input subdistrict
    [Arguments]     ${subdistrict}
    Wait Until Element Is Visible           ${TXT_CARI_KECAMATAN}        ${TIMEOUT}
    Sleep    2s
    Click Element                           ${TXT_CARI_KECAMATAN}
    Sleep    1s
    Input Text Into Current Element         ${subdistrict}

Select the subdistrict origin result
    Wait Until Element Is Visible           ${RESULT_ORIGIN_KECAMATAN}    ${TIMEOUT}
    Click Element                           ${RESULT_ORIGIN_KECAMATAN}
    
Select the subdistrict destination result
    Wait Until Element Is Visible           ${RESULT_DESTINATION_KECAMATAN}
    Click Element                           ${RESULT_DESTINATION_KECAMATAN}

Click button cek tarif
    Click Element                           ${BTN_CEK_TARIF}

Shipping rate price info
    Wait Until Element Is Visible           ${PRICE_LIST}
    Page Should Contain Element             ${TOTAL_TARIF_EST}