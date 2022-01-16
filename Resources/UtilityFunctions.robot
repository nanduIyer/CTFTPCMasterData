*** Settings ***
Library  SeleniumLibrary
Variables   ../Library/Locators.py

*** Variables ***


*** Keywords ***
Navigate to Currect Screen
    [Arguments]      ${screenname}    ${mainmenuimgpath}    ${top_master_menu}   ${second_menu}     ${pgContain}    ${expectedpgdisplay}
    Set Selenium Implicit Wait   ${short_wait_time}
    Click Element   ${mainmenuimgpath}
    Page Should Contain     ${pgContain}
    ${Pgtitle}=  Get Title
    #Log Title
    Run Keyword IF  "${Pgtitle}"=="${defaultpagetitle}"    ScreenSuccess     ${screenname}    ${mainmenuimgpath}     ${top_master_menu}   ${second_menu}    ${Pgtitle}  ${expectedpgdisplay}
        ...     ELSE    ScreenFailed    $(screenname)   ${Pgtitle}  ${top_master_menu}   ${second_menu}

    #Set Selenium Implicit Wait   ${very_long_wait_time}
    Wait Until Element Contains     ${reg_pghdr}       ${expectedpgdisplay}
    ${PageHeader}=      Get Text    ${reg_pghdr}
    log     ${PageHeader}

ScreenSuccess
    [Arguments]    ${screenname}      ${mainmenuimgpath}    ${top_master_menu}   ${second_menu}     ${Pgtitle}    ${expectedpgdisplay}
    Log     Screen "${Pgtitle}" identified
    Set Selenium Implicit Wait   ${short_wait_time}
    Press Keys     ${top_master_menu}    [RETURN]
    Set Selenium Implicit Wait   ${short_wait_time}
    Press Keys     ${second_menu}    [RETURN]
    Set Selenium Implicit Wait   ${very_long_wait_time}
    Wait Until Page Contains    ${expectedpgdisplay}
    Set Selenium Implicit Wait   ${short_wait_time}
    Click Element   ${mainmenuimgpath}
    #capture page screenshot    Images/${Uniqueid}${screenname}.png

ScreenFailed
    [Arguments]    ${screenname}    ${expectedpgtitle}  ${top_master_menu}   ${second_menu}
    Log     Screen "${expectedpgtitle}" not found
    capture page screenshot    Images/${Uniqueid}${screenname}_failed.png
    Close browser

Table Validations
    [Arguments]   ${TableLocator}
    Table Column Should Contain     ${pc_plant_table}    1   Plant ID
    ${NoofRows}=   Get Element Count   ${pc_plant_tbl_rows}
    ${NoofColumns}=   Get Element Count   ${pc_plant_tbl_cols}
    FOR     ${index}    IN RANGE  1      ${NoofRows}+1
        ${PlantID}=     GetText     xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[${index}]/td
        Log      ${PlantID}
        Log     ${index}
    END
    log     Number of rows found ${NoofRows}
    log     Number of columns found ${NoofColumns}


Validate Number of records
    [Arguments]      ${screenname}    ${totalrecordloc}    ${screentotrecloc}
    ${expval}=  Set Variable    Total No of Records :
    ${totnoofrows}=    Get Element Count  ${totalrecordloc}
    Log    ${expval} ${totnoofrows}
    ${screennoofrecords}=   Get Text   ${screentotrecloc}
    Log     ${screennoofrecords}

    #${scnlen}     Get Length    ${screennoofrecords}
    #Log     ${scnlen}
    Run Keyword IF  "${expval} ${totnoofrows}"=="${screennoofrecords}"    matchingfound
        ...     ELSE    NoofRecordNotMatching

matchingfound
    Log     No of records in the Table and Screen are matching

NoofRecordNotMatching
    Log     No of records in the Table and Screen are not matching