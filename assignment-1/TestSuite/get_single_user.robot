*** Settings ***
Library           RequestsLibrary
Resource          ../resources.robot
Resource          ../StepDefinitions/users.robot
Test Setup        Set headers
Test Teardown     Delete All Sessions


*** Variables ***
${uid}                    2
${invalid_uid}            a
${expected_code}        200
${attributes}            id    email    first_name    last_name    avatar

*** Test Cases ***
As a user I want to get single user by valid id
  [Documentation]   Test for view single user by user id
  [Tags]    Positive
  GIVEN GET single user by ${uid} valid
  WHEN Get response object
  THEN Status code should be ${expected_code}
  AND Response uid should be ${uid}

As a user I want to get single user by invalid id  
  [Documentation]   Test for view single user by invalid user id
  [Tags]    Negative
  GIVEN GET single user by ${invalid_uid} invalid
  WHEN Get response object
  THEN Status code should be 404