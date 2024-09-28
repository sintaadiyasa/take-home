*** Settings ***
Library                                     AppiumLibrary

*** Variables ***
${POP_UP_LACAK}                  /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup
${POP_UP_LACAK_CLOSE}            //android.widget.ImageView[@resource-id="com.lionparcel.services.consumer:id/ivClose"]
${POP_UP_LACAK_NEXT}             //android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnNext"]

${BOSS_PACK_CLOSE}               //android.widget.ImageView[@resource-id="com.lionparcel.services.consumer:id/imgClose"]
${BOSS_PACK_ICON}                //android.widget.ImageView[@resource-id="com.lionparcel.services.consumer:id/imgIcon"]
${BOSS_PACK_PICK_UP}             //android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnPositive"]
${BOSS_PACK_DROP}                //android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnPositive2"]

${TXT_SEARCH_RESI}                      //android.widget.TextView[@resource-id="com.lionparcel.services.consumer:id/txtInputStt"]
${MEMBERSHIP}                           //android.widget.LinearLayout[@resource-id="com.lionparcel.services.consumer:id/llMembershipSection"]
${PROMO_BANNER}                         //android.widget.ImageView[@resource-id="com.lionparcel.services.consumer:id/ivBannerPromo"]
${MENU_CEK_TARIF}                        //android.widget.TextView[@resource-id="com.lionparcel.services.consumer:id/txtTitle" and @text="Cek Tarif"]
${BTN_CEK_TARIF}                    //android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnCheckTariff"]

*** Keywords ***
Pop-up lacak is displayed
    Wait Until Element Is Visible           ${POP_UP_LACAK}
    Wait Until Element Is Visible           ${POP_UP_LACAK_CLOSE}
    Wait Until Element Is Visible           ${POP_UP_LACAK_NEXT}

Close lacak pop-up
    Click Element                           ${POP_UP_LACAK_CLOSE}

Close lacak pop-up if visible
    ${isVisible}=                           Run Keyword And Return Status    
    ...                                     Wait Until Element Is Visible        ${POP_UP_LACAK_CLOSE}        5s
    IF  ${isVisible}==True
        Wait Until Page Contains Element    ${POP_UP_LACAK_CLOSE}                ${TIMEOUT}                               
        Click Element                       ${POP_UP_LACAK_CLOSE}           
    END        

Pop-up boss pack is displayed
    Wait Until Element Is Visible           ${BOSS_PACK_CLOSE}
    Wait Until Element Is Visible           ${BOSS_PACK_ICON}
    Wait Until Element Is Visible           ${BOSS_PACK_PICK_UP}
    Wait Until Element Is Visible           ${BOSS_PACK_DROP}

Close boss pack pop-up
    Click Element                           ${BOSS_PACK_CLOSE}

Close boss pack pop-up if visible
    ${isVisible}=                           Run Keyword And Return Status    
    ...                                     Wait Until Element Is Visible        ${BOSS_PACK_CLOSE}
    IF  ${isVisible}==True
        Wait Until Page Contains Element    ${BOSS_PACK_CLOSE}                ${TIMEOUT}                               
        Click Element                       ${BOSS_PACK_CLOSE}           
    END 
Homepage is displayed
    # Wait Until Element Is Visible           ${TXT_SEARCH_RESI}
    # Wait Until Element Is Visible           ${MEMBERSHIP}
    #Wait Until Element Is Visible           ${PROMO_BANNER}
    Wait Until Element Is Visible           ${MENU_CEK_TARIF}

Click menu icon cek tarif
    Click Element                           ${MENU_CEK_TARIF}