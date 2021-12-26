*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigating to Plant Config
    Set Selenium Implicit Wait   100

    Click Element   XPath://*[@id="FTPCApps-1332792659"]/div/div[2]/div/div[1]/div/div/div[1]/div/div/div/div/div[1]/img
    Page Should Contain     Plant Configuration
    ${Pgtitle}=  Get Title
    Log Title

    Press Keys     XPath://*[@id="BCOR-CooperTiresNavBarImpl"]/div/div/div/div/div/div[1]/div[2]/div/div[1]/div     [RETURN]

Reading Plant List Table
    Table Column Should Contain     xpath://*[@id="ResponsiveTable"]    1   Plant ID
    ${NoofRows}=   Get Element Count   xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr
    ${NoofColumns}=   Get Element Count   xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td
    FOR     ${index}    IN RANGE  1      ${NoofRows}+1
        ${PlantID}=     GetText     xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[${index}]/td
        Log      ${PlantID}
        Log     ${index}
    END


    log     Number of rows found ${NoofRows}
    log     Number of columns found ${NoofColumns}
    ${FirstRecord}=    Get Text    xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td
    log     First Record ${FirstRecord}

    #Selecting first row
    Press Keys     XPath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[1]/div    [RETURN]

    #Click Edit button
    Set Browser Implicit Wait   10000
    Press Keys     XPath://*[@id="BCOR-PlantViewImpl"]/div/div/div/div/div/div[1]/div/div/div[2]/div/div[1]/img    [RETURN]


    Set Browser Implicit Wait   10000
    Clear Element Text  XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[3]/div/input

    Set Browser Implicit Wait   10000
    ${getcurrentdescription}=   Get Text    XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[3]/div/input
    Log     ${getcurrentdescription}
    Input Text      XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[3]/div/input        Findlay Plant in OHio
    Capture Page Screenshot

    Set Browser Implicit Wait   10000
    Element Should Be Enabled   XPath://*[@id="BCOR-PlantCreateDialogImpl"]/div/div/div[3]/div/div[1]/div
    Press Keys  XPath://*[@id="BCOR-PlantCreateDialogImpl"]/div/div/div[3]/div/div[1]/div   [RETURN]

    #Selecting first row
    Press Keys     XPath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[1]/div    [RETURN]



