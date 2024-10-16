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

    select frame    packageFrame    #id name path
    click link    org.oprn.sdf
    unselect frame

    select frame    packageFrame2    #id name path
    click link    org.oprn.sdf
    unselect frame

    close browser