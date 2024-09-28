*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections
Library    FakerLibrary

*** Variables ***
${BASE_URI}   https://reqres.in

*** Keywords ***
Set headers
  [Documentation]   Set the headers with content type
  &{key_value}    Create Dictionary    Content-Type=application/json

Get response object
  [Documentation]   Set variable of response body
  Set Test Variable    ${OBJECT}    ${RESPONSE.json()}
  Log  ${OBJECT}  formatter=repr

Status code should be ${expected_code}
  [Documentation]   Status code must be equal expected code in headers
  #Status Should Be  ${expected_code}   ${RESPONSE}   
  Should Be Equal As Numbers    ${RESPONSE.status_code}    ${expected_code}

Generate random name
  [Documentation]   Generate name for data tests
  ${name}   First Name
  Set Test Variable    ${NAME}    ${name}

Generate random job
  [Documentation]   Generate job for data tests
  ${job}   Job
  Set Test Variable    ${JOB}    ${job}

Loaddddd user api json schema
  [Arguments]    ${file}
  [Documentation]   Load JSON object for set value
  ${json}   Load JSON From File    ${CURDIR}/SchemaObject/${file}
  Set Test Variable    ${JSON_SCHEMA}    ${json}