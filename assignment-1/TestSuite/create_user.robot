*** Settings ***
Library           RequestsLibrary
Resource          ../resources.robot
Resource          ../StepDefinitions/users.robot
Test Setup        Set headers
Test Teardown     Delete All Sessions

*** Variables ***
${create_user_schema}        create_user.json

*** Test Cases ***
As a user I want to create new user
  [Documentation]   Test for create new user
  [Tags]    Positive
  GIVEN Generate data new user
  AND Set user data using ${NAME} and ${JOB} in ${create_user_schema}
  WHEN POST insert new user request
  THEN Status code should be 201
  AND Response create new user should be ${NAME} and ${JOB}