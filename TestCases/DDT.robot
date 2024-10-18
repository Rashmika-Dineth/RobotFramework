*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/init.robot
Suite Setup    Open my browser
Suite Teardown    Close my browser
Test Template    Invalid login

*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Open login page
    sleep   5
    Input username  ${username}
    Input pwd   ${password}
    Click login
    Error msg

Valid login
    [Arguments]    ${username}      ${password}
    Open login page
    Input username
    Input pwd
    Click login
    Success msg

*** Variables ***

*** Test Cases ***       username      password
Right user empty password         admin@yourstore.com       ${EMPTY}
Right user wrong password         admin@yourstore.com       xyz
Wrong user right password         admi@yourstore.com       admin
Wrong user empty password         admi@yourstore.com       ${EMPTY}
Wrong user wrong password         admi@yourstore.com       xyz
