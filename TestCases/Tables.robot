*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***
${browser}  chrome
${url}  https://practice.expandtesting.com/tables

*** Test Cases ***
Testing Option dropdown
    open browser    ${url}   ${browser}
    maximize browser window
    sleep    1
    ${rows}=    get element count    xpath://*[@id="table1"]/tbody/tr
    ${cols}=    get element count    xpath://*[@id="table1"]/tbody/tr[1]/td
    ${data}=    get text    xpath://*[@id="table1"]/tbody/tr[1]/td[2]
    log to console    ${rows}
    log to console    ${rows}
    log to console    ${data}
    table column should contain    xpath://*[@id="table1"]      3       Email
    table row should contain    xpath://*[@id="table1"]     1   John
    close browser