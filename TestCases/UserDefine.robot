*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    {appbrowser}
    open browser    ${appurl}    {appbrowser}
    maximize browser window
    ${title}    get title
    [Return]    ${title}

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/
${url2}  https://www.bing.com/

*** Test Cases ***
Testing Option dropdown
    ${pageTitle}=   launchBrowser    ${url}  ${browser}
    log to console    ${pageTitle}
    close all browsers