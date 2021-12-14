*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Test PlantConfiguration
    Set Browser Implicit Wait   10000

    Click Element   XPath://*[@id="FTPCApps-1332792659"]/div/div[2]/div/div[1]/div/div/div[1]/div/div/div/div/div[1]/img

    Set Browser Implicit Wait   10000
    Page Should Contain     Plant Configuration
    Set Browser Implicit Wait   10000
    Press Keys     XPath://*[@id="BCOR-CooperTiresNavBarImpl"]/div/div/div/div/div/div[1]/div[2]/div/div[1]/div     [RETURN]

    Set Browser Implicit Wait   10000
    Table Column Should Contain     xpath://*[@id="ResponsiveTable"]    1   Plant ID


    ${NoofRows}=   Get Element Count   xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr
    ${NoofColumns}=   Get Element Count   xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td
    log     Number of rows found ${NoofRows}
    log     Number of columns found ${NoofColumns}



    #${"Plaint_ID"} set variable   [@id="gwt-uid-9"]
    #Element Should Be Enabled  ${"Plaint_ID"}
    #Element Should Be Visible  ${"Plaint_ID"}
    #Clear Element Text ${"Plaint_ID"}

    # Table Xpath //*[@id="ResponsiveTable"]/div[1]/div[1]/div/table
    # //*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]