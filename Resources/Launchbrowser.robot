*** Settings ***
Library  SeleniumLibrary
Library     ../Library/utilities.py     FTPC

*** Variables ***


*** Keywords ***
LaunchBrowser
    [Arguments]     ${appURL}   ${appBrowser}

    OPEN BROWSER   ${appURL}       ${appBrowser}
    Maximize Browser Window
    ${Pgtitle}=  Get Title
    Log Title
    Log     {Pgtitle}
    ${Uniqueid}      geneate_GUID   CTFTPC
    Set Global Variable    ${Uniqueid}
    Log     ${Uniqueid}

LogOutandCloseBrowser
        Close Browser