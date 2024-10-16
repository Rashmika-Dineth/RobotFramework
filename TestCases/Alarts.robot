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

    handle alert    accept
    handle alert    dismiss
    handle alert    leave

    alert should be present    Press a button!

    close browser