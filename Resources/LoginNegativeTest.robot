*** Settings ***
Library     SeleniumLibrary
Resource    Launchbrowser.robot

Variables   ../Library/Locators.py

Suite Setup     Launchbrowser.LaunchBrowser     ${ApplicationURL}      ${defaultBrowser}
#Suite Teardown  Launchbrowser.LogOutandCloseBrowser
Test Template   Invalid Login


*** Test Cases ***
    correct user empty pwd      uatmaster    ${EMPTY}
    correct user wrong pwd      uatmaster    123
    wrong user correct pwd      uatadmin    123
    wrong user empty pwd        atadmin    ${EMPTY}
    wrong user wrong pwd        uatadmin    12356



*** Keywords ***
Invalid Login
    [Arguments]  ${Loginname}   ${Loginpwd}
    Set Selenium Implicit Wait   ${short_wait_time}
    Input Text       ${Login_txt_username}          ${Loginname}

    Input Password   ${Login_txt_password}          ${Loginpwd}

    Element Should Be Enabled       ${btn_login}
    Press Keys        ${btn_login}                  [RETURN]

    Page should contain   Error

    press keys    XPath:/html/body/div[2]/div[2]/div/div/p      [Return]
