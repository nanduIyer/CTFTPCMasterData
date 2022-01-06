*** Settings ***
Library  SeleniumLibrary
Library  DatabaseLibrary
Library  OperatingSystem

Resource  ../../Resources/Launchbrowser.robot
Resource  ../../Resources/FTPCLogin.robot
Resource  ../../Resources/FTPCPlantConfiguration.robot

Variables   ../Library/Locators.py

Suite Setup  Connect To Database    pymssql     ${database_name}    ${database_user}   ${database_password}   ${database_server}   ${database_port}
#Suite Setup    Launchbrowser.LaunchBrowser     ${FTPCPlantOperationsURL.${defenv}}      ${Browser}[1]
#Suite Teardown   Launchbrowser.LogOutandCloseBrowser



*** Variables ***
${URL}  http://ta0360:8080/FTPCApps/coopertires
@{Browser}       edge    headlessfirefox     chrome
&{FTPCPlantOperationsURL}   qa=http://ta0360:8080/FTPCApps/coopertires  uat=qa=http://ta0360:8080/FTPCApps/coopertires
${defenv}  qa

${DPageContains}    Dashboard

&{username}    admin=uatmaster  operator=uatmaster
&{password}    admin=123  operator=123
${defUsername}  admin
${defpassword}  admin

*** Test Cases ***
Testing with all Browser
    [Documentation]     Launching the browser
    ${length}=    Get Length    ${Browser}
    Log     ${length}
    # For Running the test cases for all 4 major browsers Uncomment the block and comment single browser test

    ################################################
    #FOR     ${index}    IN RANGE  0      ${length}-2
    #    Launchbrowser.LaunchBrowser     ${FTPCPlantOperationsURL.${defenv}}      ${Browser}[${index}]
    #    Log    ${Browser}[${index}]

    #    ${CurrentPgHdr}=     FTPCLogin.LoginToFTPC   ${username.${defUsername}}  ${password.${defpassword}}
    #    Log     ${CurrentPgHdr}
    #    Log     ${DPageContains}
    #    Run Keyword IF  "${CurrentPgHdr}"=="${DPageContains}"    LoginSuccess
    #    ...     ELSE    LoginFailed
    ################################################
    #block the below bock if the test need for all browsers

        Launchbrowser.LaunchBrowser     ${FTPCPlantOperationsURL.${defenv}}      edge

        ${CurrentPgHdr}=     FTPCLogin.LoginToFTPC   ${username.${defUsername}}  ${password.${defpassword}}
        Log     ${CurrentPgHdr}
        Log     ${DPageContains}
        Run Keyword IF  "${CurrentPgHdr}"=="${DPageContains}"    LoginSuccess
        ...     ELSE    LoginFailed

    ################################################

        FTPCPlantConfiguration.Navigate to Plant Config
        FTPCPlantConfiguration.Reading Plant List Table
        FTPCPlantConfiguration.Editing the Plant Record
        FTPCPlantConfiguration.Validate Number of records
        FTPCPlantConfiguration.Test Search Box functionality
        FTPCPlantConfiguration.Export Plant Config Data
        #Close Browser
    #END


*** Keywords ***
LoginSuccess
    Log     Login Success
LoginFailed
    Log     Login Failed
    FTPCLogin.LogOutandCloseBrowser
