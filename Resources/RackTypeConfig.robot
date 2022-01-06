*** Settings ***
Library  SeleniumLibrary
Variables   ../Library/Locators.py

*** Variables ***
${expectedpgtitle}     Cooper Tires
${imp_file_path}        C:/Users/NGIyer/Documents/FTPCMasterDataConfiguration/TestData/_5_Racktype_Config.xlsx

*** Keywords ***
Navigate to Rack Type Menu
    Set Selenium Implicit Wait   ${short_wait_time}

    Click Element   ${top_left_image_menu}

    Page Should Contain     Plant Configuration
    ${Pgtitle}=  Get Title
    Log Title
    Run Keyword IF  "${Pgtitle}"=="${expectedpgtitle}"    ScreenSuccess
        ...     ELSE    ScreenFailed

Reading Rack Type Table

Import Date from excel file
    Page Should Contain     Rack Type Configuration
    Wait Until Page Contains Element    ${cm_rtc_imp_data_btn}

    Set Browser Implicit Wait   ${long_wait_time}
    Click Element    ${cm_rtc_imp_data_btn}

    Wait Until Page Contains    Upload Rack Type Configuration

    Set Browser Implicit Wait   ${long_wait_time}
    Choose File     ${cm_rtc_imp_file_input}     ${imp_file_path}

    Element Should Be Enabled      ${cm_rtc_imp_upload_btn}

    Set Browser Implicit Wait   ${long_wait_time}
    Click Element   ${cm_rtc_imp_upload_btn}

    # Code to save needs to be added.


ScreenSuccess
    Log     Screen "${expectedpgtitle}" identified
    #Press Keys     ${carrier_master_menu}     [RETURN]
    Click Element   ${carrier_master_menu}

    Set Browser Implicit Wait   ${long_wait_time}
    #Press Keys     ${carrier_master_menu}     [RETURN]
    Click Element   ${cm_rack_type_config_menu}

    capture page screenshot    Images/${Uniqueid}RScreenSuccess.png

ScreenFailed
    Log     Screen "${expectedpgtitle}" not found
    capture page screenshot    Images/${Uniqueid}CCscreenfailed.png
    Close browser