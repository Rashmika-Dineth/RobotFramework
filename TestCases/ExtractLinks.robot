*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***
${browser}  chrome
${url}  https://www.demo.guru99.com/test/newtours/

*** Test Cases ***
Testing Option dropdown
    open browser    ${url}   ${browser}
    maximize browser window
    sleep    1
    ${linkcount}=    get element count    xpath://a
    log to console    ${linkcount}

    ${listLinks}    create list

    FOR    ${i}     IN RANGE    1   ${linkcount}+1
    ${listText}=    get text    xpath:(//a)[${i}]
    log to console    ${listText}
    END

    close browser