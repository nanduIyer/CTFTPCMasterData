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

LogOutandCloseBrowser
        Close Browser