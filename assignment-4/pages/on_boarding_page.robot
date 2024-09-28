*** Settings ***
Library                                     AppiumLibrary

*** Variables ***
${BTN_AGREE}                //android.widget.TextView[@resource-id="com.lionparcel.services.consumer:id/btnAgree"]
${BTN_DISAGREE}             //android.widget.TextView[@resource-id="com.lionparcel.services.consumer:id/btnDisagree"]
${TERM_CONTENT}             //androidx.recyclerview.widget.RecyclerView[@resource-id="com.lionparcel.services.consumer:id/rvContent"]

${BTN_SKIP_ACCOUNT}        //android.widget.TextView[@resource-id="com.lionparcel.services.consumer:id/txtSkip"]
${BTN_REGISTER}            //android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnRegister"]
${BTN_LOG_IN}              //android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnLogin"]
${BTN_GOOGLE}              //android.view.ViewGroup[@resource-id="com.lionparcel.services.consumer:id/clGoogle"]

*** Keywords ***
Term is opened
    Wait Until Element Is Visible           ${BTN_AGREE}

Click button agree
    Click Element                           ${BTN_AGREE}

On boarding page is opened
    Wait Until Element Is Visible           ${BTN_SKIP_ACCOUNT}

Click button skip
    Click Element                           ${BTN_SKIP_ACCOUNT}   