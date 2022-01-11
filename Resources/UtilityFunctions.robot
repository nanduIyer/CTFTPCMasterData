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