*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Test PlantConfiguration
    Set Selenium Implicit Wait   100

    Click Element   XPath://*[@id="FTPCApps-1332792659"]/div/div[2]/div/div[1]/div/div/div[1]/div/div/div/div/div[1]/img
    Page Should Contain     Plant Configuration
    ${Pgtitle}=  Get Title
    Log Title

    Press Keys     XPath://*[@id="BCOR-CooperTiresNavBarImpl"]/div/div/div/div/div/div[1]/div[2]/div/div[1]/div     [RETURN]

    Table Column Should Contain     xpath://*[@id="ResponsiveTable"]    1   Plant ID


    ${NoofRows}=   Get Element Count   xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr
    ${NoofColumns}=   Get Element Count   xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td
    log     Number of rows found ${NoofRows}
    log     Number of columns found ${NoofColumns}
    ${FirstRecord}=    Get Text    xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td
    log     First Record ${FirstRecord}

    #Selecting first row
    Press Keys     XPath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[1]/div    [RETURN]

    #Click Edit button
    Set Browser Implicit Wait   10000
    Press Keys     XPath://*[@id="BCOR-PlantViewImpl"]/div/div/div/div/div/div[1]/div/div/div[2]/div/div[1]/img    [RETURN]

    Clear Element Text  XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[3]/div/input

    Set Browser Implicit Wait   10000
    Input Text      XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[3]/div/input        Findlay Plant in OHio
    Capture Page Screenshot

    Set Browser Implicit Wait   10000

    Press Keys  XPath://*[@id="BCOR-PlantCreateDialogImpl"]/div/div/div[3]/div/div[1]/div   [RETURN]

    #Selecting first row
    Press Keys     XPath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[1]/div    [RETURN]

    #Click Edit button
    Set Browser Implicit Wait   10000
    Press Keys     XPath://*[@id="BCOR-PlantViewImpl"]/div/div/div/div/div/div[1]/div/div/div[2]/div/div[1]/img    [RETURN]
    Set Browser Implicit Wait   10000
    Clear Element Text  XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[3]/div/input

    Set Browser Implicit Wait   10000
    Input Text      XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[3]/div/input        FINDLAY
    Capture Page Screenshot

    Set Browser Implicit Wait   10000

    Press Keys  XPath://*[@id="BCOR-PlantCreateDialogImpl"]/div/div/div[3]/div/div[1]/div   [RETURN]




    #${"Plaint_ID"} set variable   [@id="gwt-uid-9"]
    #Element Should Be Enabled  ${"Plaint_ID"}
    #Element Should Be Visible  ${"Plaint_ID"}
    #Clear Element Text ${"Plaint_ID"}

    # Table Xpath //*[@id="ResponsiveTable"]/div[1]/div[1]/div/table
    # //*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]
    # //*[@id="gwt-uid-11"]

