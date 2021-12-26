*** Settings ***
Library  SeleniumLibrary
Variables   ../Library/Locators.py



*** Variables ***


*** Keywords ***
LoginToFTPC
    [Arguments]  ${Loginname}   ${Loginpwd}
    Set Selenium Implicit Wait   100
    #Input Text      id=CD-TextField.LogonView.UserName         ${Loginname}
    Input Text       ${Login_txt_username}          ${Loginname}

    Input Password   ${Login_txt_password}          ${Loginpwd}

    #Element Should Be Enabled   id=CD-Button.LogonView.Login
    Element Should Be Enabled       ${btn_login}
    #Press Keys  id=CD-Button.LogonView.Login   [RETURN]
    Press Keys        ${btn_login}                  [RETURN]

    Wait Until Page Contains    Dashboard
    ${PageHeader}=      Get Text    XPath:/html/body/div[1]/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/div/div/div/div
    Log     ${PageHeader}
   [Return]  ${PageHeader}

