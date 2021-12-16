*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${defenv}  qa
${defUsername}  admin
${defpassword}  admin
&{FTPCPlantOperationsURL}   qa=http://ta0360:8080/FTPCApps/coopertires  uat=qa=http://ta0360:8080/FTPCApps/coopertires
&{username}    admin=uatmaster  operator=uatmaster
&{password}    admin=123  operator=123
#@{browser}      chrome  edge   firefox

*** Keywords ***
LoginToFTPC
   # [arguments]  ${appURL}  ${appbrowser}  ${appusername} ${apppassword}

    OPEN BROWSER   ${FTPCPlantOperationsURL.${defenv}}      firefox
    Maximize Browser Window
    ${Pgtitle}=  Get Title
    Log Title
    Log     {Pgtitle}
    Set Selenium Implicit Wait   100
    Input Text      id=CD-TextField.LogonView.UserName          ${username.${defUsername}}
    Input Password  id=CD-PasswordField.LogonView.Password      ${password.${defpassword}}
    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]

    Wait Until Page Contains    Dashboard

LogOutandCloseBrowser
        Close Browser






