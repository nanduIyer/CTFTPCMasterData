*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem
Variables   ../Library/Locators.py

Suite Setup  Connect To Database    pymssql     ${database_name}    ${database_user}   ${database_password}   ${database_server}   ${database_port}

*** Variables ***
#${database server}      TA0365
${database_port}        1433
${database_name}        PDS_RA_FTPC_QA_TEX
${database_user}        RAMES_FTPC_QA_TEX
${database_password}    R@m3!@tax

*** Test Cases ***
Run SQL Query to fetch data
        @{output_data}=         query           Select * from WORK_CENTER
        Log            ${output_data}[1][1]

        ${output_data1}=     Execute Sql Script      TestData/TestSQLScript.sql
        Log     ${output_data1}

        ${output_data2}=     Row Count      Select * from WORK_CENTER
        Log     ${output_data2}
