*** Settings ***
Library           RequestsLibrary
Library           Collections
Library           String
Library           JSONLibrary
Resource          ../resources.robot

*** Variables ***
${USERS_URI}     /api/users/
${create_user_schema}        create_user.json

*** Keywords ***
GET single user by ${uid} valid
    [Documentation]   Get request for view single user based on user id
    Create Session    mySession    ${BASE_URI}
    # Make the GET request
    ${response}    GET On Session    mySession    ${USERS_URI}/${uid}

    # Parse the response JSON
    Set Test Variable    ${RESPONSE}    ${response}    

GET single user by ${uid} invalid
    [Documentation]   Get request for view single user based on user id
    Create Session    mySession    ${BASE_URI}
    # Make the GET request
    ${response}    GET On Session    mySession    ${USERS_URI}/${uid}    expected_status=404

    # Parse the response JSON
    Set Test Variable    ${RESPONSE}    ${response}  

Response uid should be ${uid}
    [Documentation]   Verify response data should be equal expected user id
    Get response object
    Should Be Equal    '${OBJECT['data']['id']}'    '${uid}'

Generate data new user
    [Documentation]   Generate name and job data
    Generate random name
    Generate random job

Set user data using ${name} and ${job} in ${file}
    [Documentation]   Set name and job data in JSON object
    Loaddddd user api json schema    ${file}
    ${JSON_SCHEMA}    Update Value To Json    ${JSON_SCHEMA}    $.name    ${name}
    ${JSON_SCHEMA}    Update Value To Json    ${JSON_SCHEMA}    $.job    ${job}
    Set Test Variable    ${JSON_VALUE}    ${JSON_SCHEMA}
    Log    Updated JSON Value: ${JSON_VALUE}

POST insert new user request
    [Documentation]   Post request for create new user
    Create Session    mySession    ${BASE_URI}
    # Make the POST request
    ${response}    POST On Session    mySession    ${USERS_URI}    data=${JSON_VALUE}  

    # Parse the response JSON
    Set Test Variable    ${RESPONSE}    ${response}

Response create new user should be ${name} and ${job}
    [Documentation]   Verify response body should be equal with expected value
    Get response object
    Should Be Equal    '${OBJECT['name']}'        '${name}'
    Should Be Equal    '${OBJECT['job']}'        '${job}'