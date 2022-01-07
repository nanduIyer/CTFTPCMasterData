*** Settings ***
Library  SeleniumLibrary
Variables   ../Library/Locators.py

*** Variables ***


*** Keywords ***
Navigate to Currect Screen
    [Arguments]      ${screenname}    ${mainmenuimgpath}  ${pgContain}  ${top_master_menu}  ${expectedpgtitle}   ${second_menu}
    Set Selenium Implicit Wait   ${short_wait_time}
    Click Element   ${mainmenuimgpath}
    Page Should Contain     ${pgContain}
    ${Pgtitle}=  Get Title
    Log Title
    Run Keyword IF  "${Pgtitle}"=="${expectedpgtitle}"    ScreenSuccess     ${screenname}    ${mainmenuimgpath}    ${expectedpgtitle}   ${top_master_menu}   ${second_menu}
        ...     ELSE    ScreenFailed    $(screenname)   ${expectedpgtitle}  ${top_master_menu}   ${second_menu}

ScreenSuccess
    [Arguments]    ${screenname}  ${mainmenuimgpath}   ${expectedpgtitle}   ${top_master_menu}   ${second_menu}
    Log     Screen "${expectedpgtitle}" identified
    Set Selenium Implicit Wait   ${short_wait_time}
    Press Keys     ${top_master_menu}    [RETURN]
    Set Selenium Implicit Wait   ${short_wait_time}
    Press Keys     ${second_menu}    [RETURN]
    Click Element   ${mainmenuimgpath}
    capture page screenshot    Images/${Uniqueid}${screenname}.png

ScreenFailed
    [Arguments]    ${screenname}    ${expectedpgtitle}  ${top_master_menu}   ${second_menu}
    Log     Screen "${expectedpgtitle}" not found
    capture page screenshot    Images/${Uniqueid}${screenname}_failed.png
    Close browser



Do Table Validations
     [Arguments]   ${TableLocator}