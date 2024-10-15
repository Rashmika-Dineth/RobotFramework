*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://dbms-unit10.firebaseapp.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}   ${browser}
    maximize browser window
    sleep   1
    title should be     LMS SYSTEM
    click link  xpath://a[normalize-space()='Log in']
    sleep   1
    ${"email"}  set variable    id:email

    element should be visible   ${"email"}
    element should be enabled   ${"email"}

    input text   ${"email"}    JohnDavid@gmail.com
    sleep   2
    clear element text  ${"email"}
    sleep   2
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[normalize-space()='Log in']
    input text  id:email    abc123@gmail.com
    input text  id:password   123456
    click element   xpath://button[@type='submit']

