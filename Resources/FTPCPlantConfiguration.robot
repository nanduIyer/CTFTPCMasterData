*** Settings ***
Library  SeleniumLibrary
Variables   ../Library/Locators.py

*** Variables ***
${expectedpgtitle}     Cooper Tires

*** Keywords ***
Navigating to Plant Config
    Set Selenium Implicit Wait   ${short_wait_time}

    Click Element   ${pc_menu_name}
    Page Should Contain     Plant Configuration
    ${Pgtitle}=  Get Title
    Log Title
    Run Keyword IF  "${Pgtitle}"=="${expectedpgtitle}"    PCScreenSuccess
        ...     ELSE    PCScreenFailed


PCScreenSuccess
    Log     Screen "${expectedpgtitle}" identified
    Press Keys     ${pc_menu_navbar}     [RETURN]

PCScreenFailed
    Log     Screen "${expectedpgtitle}" not found
    Close browser

Reading Plant List Table
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

Editing the Plant Record
    ${FirstRecord}=    Get Text    xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td
    log     First Record ${FirstRecord}

    #Selecting first row
    Press Keys     XPath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[1]/div    [RETURN]

    #Click Edit button
    Set Browser Implicit Wait   ${long_wait_time}
    Press Keys     ${pc_plant_edit_btn}    [RETURN]

    Set Browser Implicit Wait   ${long_wait_time}
    ${getcurrentdescription}=   Get Value    ${pc_record_edit_plantdesc}
    Log     ${getcurrentdescription}

    Set Browser Implicit Wait   ${long_wait_time}
    ${getcurrentuom}=   Get Value    ${pc_record_edit_UOM}
    #Select From List By Index     XPath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td   1
    #${pc_record_edit_UOM}
    Log     ${getcurrentuom}
    Log     ${pc_record_edit_UOM}

    Set Browser Implicit Wait   ${long_wait_time}
    ${getcurrentdtformat}=   Get Value    ${pc_record_edit_date_format}
    Log     ${pc_record_edit_language}
    Log     ${getcurrentdtformat}

    Set Browser Implicit Wait   ${long_wait_time}
    ${getcurrentlang}=   Get Value    ${pc_record_edit_language}
    Log     ${getcurrentlang}


    Set Browser Implicit Wait   ${long_wait_time}
    Clear Element Text      ${pc_record_edit_plantdesc}

    Set Browser Implicit Wait   ${long_wait_time}
    ${getcurrentdescription}=   Get Value    ${pc_record_edit_plantdesc}
    Log     ${getcurrentdescription}

    Set Browser Implicit Wait   ${long_wait_time}
    Input Text     ${pc_record_edit_plantdesc}      FINDLAY
    ${getcurrentdescription}=   Get Value    ${pc_record_edit_plantdesc}
    Log     ${getcurrentdescription}

    Set Browser Implicit Wait   ${long_wait_time}
    ${getcurrentuom}=   Get Value    ${pc_record_edit_UOM}
    Log      ${getcurrentuom}

    Set Browser Implicit Wait   ${long_wait_time}
    Click Element     ${pc_record_edit_UOM_element}
    Set Browser Implicit Wait   ${long_wait_time}
    Click Element       ${pc_record_edit_uom_Imperial}

    Set Browser Implicit Wait   ${long_wait_time}
    Element Should Be Enabled   ${pc_record_edit_saveandclose}
    Press Keys  ${pc_record_edit_saveandclose}    [RETURN]

Export Plant Config Data
    #Click Export button
    Set Browser Implicit Wait   ${long_wait_time}
    Press Keys     ${pc_plant_export_btn}    [RETURN]

    Page Should Contain     Export Data
    Set Browser Implicit Wait   ${long_wait_time}
    Click Element     ${pc_plant_export_file}
    Set Browser Implicit Wait   ${long_wait_time}

    #Page Should Contain     Confirm
    Wait Until Element Contains    XPath://*[@id="gwt-uid-23"]     Confirm
    Press Keys     ${pc_plant_export_confirm_btn}   [RETURN]
    Set Browser Implicit Wait   ${long_wait_time}

Validate Number of records
    ${expval}=  Set Variable    Total No of Records :
    ${totnoofrows}=    Get Element Count   ${pc_plant_tbl_rows}
    Log    ${expval} ${totnoofrows}
    ${tbllen}     Get Length  ${expval} ${totnoofrows}
    Log     ${tbllen}
    ${screennoofrecords}=   Get Text   XPath://*[@id="BCOR-PlantViewImpl"]/div/div/div/div/div/div[5]/div
    Log     ${screennoofrecords}

    ${scnlen}     Get Length    ${screennoofrecords}
    Log     ${scnlen}
#Test Search Box functionality

#Test Sorting Functionality




