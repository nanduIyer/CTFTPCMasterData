*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${defenv}  qa
${defUsername}  admin
${defpassword}  admin
&{FTPCPlantOperationsURL}   qa=http://ta0360:8080/FTPCApps/coopertires  uat=qa=http://ta0360:8080/FTPCApps/coopertires
&{username}    admin=uatmaster  operator=uatmaster
&{password}    admin=123  operator=123

*** Keywords ***
LoginToFTPC
    OPEN BROWSER   ${FTPCPlantOperationsURL.${defenv}}      edge
    Set Browser Implicit Wait   1000
    # sleep 10s
    Maximize Browser Window
    Input Text      id=CD-TextField.LogonView.UserName          ${username.${defUsername}}
    Input Password  id=CD-PasswordField.LogonView.Password      ${password.${defpassword}}
    Element Should Be Enabled   id=CD-Button.LogonView.Login
   # Wait Until Element Is Enabled id=CD-Button.LogonView.Login
     Set Browser Implicit Wait   1000
   # Click Button    id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]

    Page Should Contain     Dashboard
    Set Browser Implicit Wait   1000

LogOutandCloseBrowser
        Close Browser






