*** Settings ***
Documentation  CooperTires FTPC Testing Automation
Resource  ../../Resources/FTPCLogin.robot
Resource  ../../Resources/FTPCPlantConfiguration.robot

Suite Setup    FTPCLogin.LaunchBrowser     ${FTPCPlantOperationsURL.${defenv}}      ${Browser}[0]
Suite Teardown   FTPCLogin.LogOutandCloseBrowser



*** Variables ***
${URL}  http://ta0360:8080/FTPCApps/coopertires
@{Browser}     firefox     edge    chrome
&{FTPCPlantOperationsURL}   qa=http://ta0360:8080/FTPCApps/coopertires  uat=qa=http://ta0360:8080/FTPCApps/coopertires
${defenv}  qa

${defUsername}  admin
${defpassword}  admin
&{username}    admin=uatmaster  operator=uatmaster
&{password}    admin=123  operator=123
#&{DPageContains}    Home=Dashboard  PConfig=PlantConfiguration
${DPageContains}    Dashboard

*** Test Cases ***
First Launchand login to URL
    [Documentation]  CooperTire-MES Plant Configuration Test Cases
    [tags]  Validating Plant Config Gird

    ${CurrentPgHdr}=     FTPCLogin.LoginToFTPC   ${username.${defUsername}}  ${password.${defpassword}}
    Log     ${CurrentPgHdr}
    Log     ${DPageContains}
   #Run Keyword IF  "${CurrentPgHdr}"  ==  "${DPageContains}"    LoginSuccess
   #...     ELSE    LoginFailed
    #...     END


    FTPCPlantConfiguration.Test PlantConfiguration


*** Keywords ***
LoginSuccess
    Log     Login Success
LoginFailed
    Log     Login Failed
    FTPCLogin.LogOutandCloseBrowser
