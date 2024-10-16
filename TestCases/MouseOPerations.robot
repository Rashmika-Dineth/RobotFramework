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

    #Right Click
    open context menu    xpath://giwefgiwegfo
    sleep    2

    #DoubleClick
    double click element    xpath://ewfwefwef

    #Drag and drop
    drag and drop    id:box1    id:box3

    close all browsers