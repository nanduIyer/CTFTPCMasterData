*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
LaunchBrowser
    [Arguments]     ${appURL}   ${appBrowser}

    OPEN BROWSER   ${appURL}       ${appBrowser}
    Maximize Browser Window
    ${Pgtitle}=  Get Title
    Log Title
    Log     {Pgtitle}


LoginToFTPC
    [Arguments]  ${Loginname}   ${Loginpwd}
    Set Selenium Implicit Wait   100
    Input Text      id=CD-TextField.LogonView.UserName         ${Loginname}

    Input Password  id=CD-PasswordField.LogonView.Password     ${Loginpwd}

    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]

    Wait Until Page Contains    Dashboard
    ${PageHeader}=      Get Text    XPath:/html/body/div[1]/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/div/div/div/div
    Log     ${PageHeader}
   [Return]  ${PageHeader}

LogOutandCloseBrowser
        Close Browser