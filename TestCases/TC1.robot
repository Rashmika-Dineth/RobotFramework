*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://dbms-unit10.firebaseapp.com/

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[normalize-space()='Log in']
    input text  id:email    abc123@gmail.com
    input text  id:password   123456
    click element   xpath://button[@type='submit']

