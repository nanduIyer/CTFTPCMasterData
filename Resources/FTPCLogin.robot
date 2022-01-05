*** Settings ***
Library  SeleniumLibrary
Variables   ../Library/Locators.py



*** Variables ***


*** Keywords ***
LoginToFTPC
    [Arguments]  ${Loginname}   ${Loginpwd}
    Set Selenium Implicit Wait   ${short_wait_time}
    Input Text       ${Login_txt_username}          ${Loginname}

    Input Password   ${Login_txt_password}          ${Loginpwd}

    Element Should Be Enabled       ${btn_login}
    Press Keys        ${btn_login}                  [RETURN]

    Wait Until Page Contains    Dashboard
    ${PageHeader}=      Get Text    ${db_pghdr}
    Log     ${Uniqueid}
    Log     ${PageHeader}
   [Return]  ${PageHeader}

