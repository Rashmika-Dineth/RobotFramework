*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***
${browser}  chrome
${url}  https://www.blogger.com/about/?bpli=1


*** Test Cases ***
Testing Option dropdown
    open browser    ${url}   ${browser}
    maximize browser window
    sleep    2
    execute javascript    window.scrollTo(0,2500)
    sleep    1

    scroll element into view        xpath://*[@id="maincontent"]/section[3]
    sleep    1

    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    1

    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    sleep    2

    close all browsers