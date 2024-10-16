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

    click element    xpath://kgfgfwglfw
    select window   title=yduetdue | Home

    open browser    https://www.google.com/     ${browser}
    maximize browser window
    sleep   2 seconds
    open browser    https://www.bing.com/       ${browser}
    maximize browser window

    switch browser    1
    ${title}=   get title
    log to console    ${title}

    switch browser    2
    ${title}=   get title
    log to console    ${title}

    close all browsers