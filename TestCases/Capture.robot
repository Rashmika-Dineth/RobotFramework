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

    capture page screenshot    C/Users/admin/project    C/Users/admin/project/logo.png
    capture element screenshot    xpath://wfwfwerf      C/Users/admin/project/element.png

    capture page screenshot    page.png
    capture element screenshot    xpath://wfwfwerf      screen.png

    close all browsers