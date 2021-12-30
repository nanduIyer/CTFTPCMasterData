*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Launchbrowser.robot
Resource  ../../Resources/FTPCLogin.robot
Resource  ../../Resources/FTPCPlantConfiguration.robot

#Suite Setup    Launchbrowser.LaunchBrowser     ${FTPCPlantOperationsURL.${defenv}}      ${Browser}[1]
#Suite Teardown   Launchbrowser.LogOutandCloseBrowser



*** Variables ***
${URL}  http://ta0360:8080/FTPCApps/coopertires
@{Browser}     edge     firefox       chrome
&{FTPCPlantOperationsURL}   qa=http://ta0360:8080/FTPCApps/coopertires  uat=qa=http://ta0360:8080/FTPCApps/coopertires
${defenv}  qa

${defUsername}  admin
${defpassword}  admin
&{username}    admin=uatmaster  operator=uatmaster
&{password}    admin=123  operator=123
#&{DPageContains}    Home=Dashboard  PConfig=PlantConfiguration

${DPageContains}    Dashboard
${Vdli}     Dashboard

*** Test Cases ***
Testing with all Browser
    [Documentation]     Launching the browser
    ${length}=    Get Length    ${Browser}
    Log     ${length}

    FOR     ${index}    IN RANGE  0      ${length}-2
        Launchbrowser.LaunchBrowser     ${FTPCPlantOperationsURL.${defenv}}      ${Browser}[${index}]
        Log    ${Browser}[${index}]

        ${CurrentPgHdr}=     FTPCLogin.LoginToFTPC   ${username.${defUsername}}  ${password.${defpassword}}
        Log     ${CurrentPgHdr}
        Log     ${DPageContains}
        Run Keyword IF  "${CurrentPgHdr}"=="${DPageContains}"    LoginSuccess
        ...     ELSE    LoginFailed


        FTPCPlantConfiguration.Navigating to Plant Config
        FTPCPlantConfiguration.Reading Plant List Table
        FTPCPlantConfiguration.Editing the Plant Record
        FTPCPlantConfiguration.Export Plant Config Data
        FTPCPlantConfiguration.Validate Number of records
        Close Browser
    END


*** Keywords ***
LoginSuccess
    Log     Login Success
LoginFailed
    Log     Login Failed
    FTPCLogin.LogOutandCloseBrowser
