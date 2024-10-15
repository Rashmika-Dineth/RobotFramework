*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://practice.expandtesting.com/radio-buttons
${browser}  chrome

*** Keywords ***

*** Test Cases ***
OpenRadioButtons
    set selenium timeout    7 seconds
    ${speed}=   get selenium speed
    log to console    ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    wait until page contains    Radio Buttons page for Automation Testing Practice
    set selenium speed    1 seconds
    scroll element into view    xpath:/html/body/footer
    #select radio button    color    red
    select radio button    sport    football
    sleep    3
    close browser