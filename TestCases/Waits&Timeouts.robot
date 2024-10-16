*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***
${browser}  chrome
${url}  https://dbms-unit10.firebaseapp.com/

*** Test Cases ***
Testing Option dropdown
    open browser    ${url}   ${browser}
    maximize browser window
    set selenium timeout    5 seconds
    wait until page contains    Rashmika
    set selenium timeout    2 seconds
    set selenium implicit wait    5 seconds
    close browser