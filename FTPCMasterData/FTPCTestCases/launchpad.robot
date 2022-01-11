*** Settings ***
Library  SeleniumLibrary
Library  DatabaseLibrary
Library  OperatingSystem

Resource  ../../Resources/Launchbrowser.robot
Resource  ../../Resources/FTPCLogin.robot
Resource  ../../Resources/FTPCPlantConfiguration.robot
#Resource  ../../Resources/RackTypeConfig.robot
Resource  ../../Resources/UtilityFunctions.robot


Variables   ../Library/Locators.py

Suite Setup  Connect To Database    pymssql     ${database_name}    ${database_user}   ${database_password}   ${database_server}   ${database_port}
#Suite Setup    Launchbrowser.LaunchBrowser     ${FTPCPlantOperationsURL.${defenv}}      ${Browser}[1]
#Suite Teardown   Launchbrowser.LogOutandCloseBrowser



*** Variables ***
${URL}  http://ta0360:8080/FTPCApps/coopertires
@{Browser}       edge    headlessfirefox     chrome
&{FTPCPlantOperationsURL}   qa=http://ta0360:8080/FTPCApps/coopertires  uat=qa=http://ta0360:8080/FTPCApps/coopertires
${defenv}  qa

${DPageContains}    Dashboard

&{username}    admin=uatmaster  operator=uatmaster
&{password}    admin=123  operator=123
${defUsername}  admin
${defpassword}  admin

*** Test Cases ***
Testing with all Browser
    [Documentation]     Launching the browser
    ${length}=    Get Length    ${Browser}
    Log     ${length}
    # For Running the test cases for all 4 major browsers Uncomment the block and comment single browser test

    ################################################
    #FOR     ${index}    IN RANGE  0      ${length}-2
    #    Launchbrowser.LaunchBrowser     ${FTPCPlantOperationsURL.${defenv}}      ${Browser}[${index}]
    #    Log    ${Browser}[${index}]

    #    ${CurrentPgHdr}=     FTPCLogin.LoginToFTPC   ${username.${defUsername}}  ${password.${defpassword}}
    #    Log     ${CurrentPgHdr}
    #    Log     ${DPageContains}
    #    Run Keyword IF  "${CurrentPgHdr}"=="${DPageContains}"    LoginSuccess
    #    ...     ELSE    LoginFailed
    ################################################
    #block the below bock if the test need for all browsers

        Launchbrowser.LaunchBrowser     ${FTPCPlantOperationsURL.${defenv}}      edge
        ${CurrentPgHdr}=     FTPCLogin.LoginToFTPC   ${username.${defUsername}}  ${password.${defpassword}}
        #Log     ${CurrentPgHdr}
        #Log     ${DPageContains}
        Run Keyword IF  "${CurrentPgHdr}"=="${DPageContains}"    LoginSuccess
        ...     ELSE    LoginFailed

    ################################################
        UtilityFunctions.Navigate to Currect Screen    Plant Config     ${top_left_image_menu}  Plant Master  ${plant_master_menu}   Cooper Tires    ${pm_plant_config_menu}

        #FTPCPlantConfiguration.Navigate to Plant Config
        FTPCPlantConfiguration.Read Plant List Table
        FTPCPlantConfiguration.Edit the Plant Record
        UtilityFunctions.Validate Number of records      Plant Config  ${pc_plant_tbl_rows}      ${pc_plant_tot_noofrec}
        FTPCPlantConfiguration.Test Search Box functionality
        #FTPCPlantConfiguration.Export Plant Config Data

        ################################################
        # Plant Config Test Completed
        # Area Config Test starts
        ################################################

        UtilityFunctions.Navigate to Currect Screen    Area Config     ${top_left_image_menu}  Plant Master  ${plant_master_menu}   Cooper Tires    ${pm_area_config_menu}

        ################################################
        # Area Config Test Completed
        # Workcenter type and group Config Test starts
        ################################################

        UtilityFunctions.Navigate to Currect Screen    WCType     ${top_left_image_menu}  Plant Master  ${plant_master_menu}   Cooper Tires    ${pm_wc_type_config_menu}

        ################################################
        # Workcenter type and group Config Test Completed
        # Workcenter  Config Test starts
        ################################################

        UtilityFunctions.Navigate to Currect Screen    WCType     ${top_left_image_menu}  Plant Master  ${plant_master_menu}   Cooper Tires    ${pm_wc_config_menu}



        ################################################
        # Plant Config Test Completed
        # Rack type Config Test starts
        ################################################

        UtilityFunctions.Navigate to Currect Screen    Rack Type Config    ${top_left_image_menu}  Carrier Master  ${carrier_master_menu}   Cooper Tires    ${cm_rack_type_config_menu}
        #RackTypeConfig.Navigate to Rack Type Menu
        #RackTypeConfig.Import Date from excel file


        #Close Browser
    #END


*** Keywords ***
LoginSuccess
    Log     Login Success
LoginFailed
    Log     Login Failed
    FTPCLogin.LogOutandCloseBrowser
