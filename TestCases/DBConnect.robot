*** Settings ***
Library       DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database  pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}
${DBHost}   localhost
${DBPort}   3306

*** Test Cases ***
Create Person Table
    ${output}=    execute sql string    create table person(id integer, first_name varchar(20), last_name varchar(20) )
    log to console    ${output}
    should be equal as strings    ${output}     None
