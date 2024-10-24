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
#Create Person Table
#    ${output}=    execute sql string    create table person(id integer, first_name varchar(20), last_name varchar(20) )
#    log to console    ${output}
#    should be equal as strings    ${output}     None

#Inserting Data in Person Table
#    ${output}=  execute sql string    Insert into person values(101, "John", "Canady");
#    log to console    ${output}
#    should be equal as strings    ${output}     None

#Insert Multiple records
#    ${output}=  execute sql script    ./TestData/TestData.sql
#    log to console    ${output}
#    should be equal as strings    ${output}     None

Check Name
    check if exists in database    select id from mydb.person where first_name="John";

Check Table
    table must exist    person

row count
    row count is 0    select id from mydb.person where first_name="John64";

Retrive data

    @{Results}=     query    Select * from mydb.person;
    log to console    many @{Results}