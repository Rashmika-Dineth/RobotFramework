*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}      https://admin-demo.nopcommerce.com/
${url2}      https://admin-demo.nopcommerce.com/login
${browser}      chrome

*** Keywords ***
Open my browser
    open browser    ${url1}      ${browser}
    maximize browser window

Open login page
    go to    ${url2}
    sleep    3

Close my browser
    close all browsers

Input username
    [Arguments]    ${username}
    input text    id:Email      ${username}

Input pwd
    [Arguments]    ${password}
    input text    id:Password      ${password}

Click login
    click element       xpath://button[@type='submit']

Click logout
    click element    xpath://a[normalize-space()='Logout']

Error msg
    page should contain    admin-demo.nopcommerce.com

Success msg
    page should contain    Dashboard