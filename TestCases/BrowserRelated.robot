*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/
${url2}  https://www.bing.com/

*** Test Cases ***
Testing Option dropdown
    open browser    ${url}   ${browser}
    maximize browser window

    ${loc}  get location
    log to console    ${loc}

    go to   ${url2}
    ${loc}  get location
    log to console    ${loc}

    go back
    ${loc}  get location
    log to console    ${loc}

    close all browsers