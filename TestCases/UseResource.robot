*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resource.robot

*** Keywords ***

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/
${url2}  https://www.bing.com/

*** Test Cases ***
Testing Option dropdown
    ${pageTitle}=   launchBrowser    ${url}  ${browser}
    log to console    ${pageTitle}
    close all browsers