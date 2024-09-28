*** Settings ***
Library          AppiumLibrary


*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/app/Lion_Parcel_2.72.0.apk
${ANDROID_PLATFORM_NAME}      Android
${DEVICE_NAME}                emulator-5554
${APP_ID}                     com.lionparcel.services.consumer
${APP_ACTIVITYaaaa}               .view.main.MainActivity
   
*** Keywords ***
 Open app by activity
    [Arguments]     ${app_Activity}
     Open Application          http://localhost:4723    
    ...    automationName=UIAutomator2    
    ...    platformName=Android    
    ...    app=${CURDIR}/app/Lion_Parcel_2.72.0.apk    
    ...    appPackage=com.lionparcel.services.consumer    
    ...    appActivity=    ${app_Activity} 
    ...    deviceName=emulator-5554    
    ...    autoGrantPermissions=true    
    ...    gpsEnabled=true

Open apps
    Open Application          http://localhost:4723
    ...    automationName=UIAutomator2    
    ...    platformName=Android    
    ...    app=${CURDIR}/app/Lion_Parcel_2.72.0.apk    
    ...    appPackage=com.lionparcel.services.consumer
    ...    deviceName=emulator-5554    
    ...    autoGrantPermissions=true    
    ...    gpsEnabled=true
 
Enter keyboard
    Press Keycode                           66

Delete keyboard
    Press Keycode                           67   

Enter A     
    Press Keycode                           29

Enter T
    Press Keycode                           48

Enter E
    Press Keycode                           33

Enter B
    Press Keycode                           30      