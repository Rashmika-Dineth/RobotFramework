*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}   ${browser}
    maximize browser window
    sleep   10
    close browser


*** Keywords ***

loginToApplication
    click link  xpath://a[normalize-space()='Log in']
    input text  id:email    abc123@gmail.com
    input text  id:password   123456
    click element   xpath://button[@type='submit']

