*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/
${url2}  https://www.bing.com/

*** Test Cases ***
For Loop
    FOR    ${i}    IN RANGE    0    10
    log to console    ${i}
    END

For Loop 2
    FOR    ${i}    IN   1 2 3 4
    # single space mean print in single line
    log to console    ${i}
    END

For Loop 3
    @{item}     create list    1    2   3   4
    FOR    ${i}     IN  @{item}
    log to console    ${i}
    exit for loop if    ${i}==3
    END
