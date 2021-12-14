*** Settings ***
Documentation  CooperTires FTPC Testing Automation
Resource  ../../Resources/FTPCLogin.robot
Resource  ../../Resources/FTPCPlantConfiguration.robot

Test Setup  FTPCLogin.LoginToFTPC

#Test Teardown   FTPCLogin.LogOutandCloseBrowser

*** Keywords ***


*** Variables ***


*** Test Cases ***
First Launchand login to URL
    [Documentation]  CooperTire-MES Plant Configuration Test Cases
    [tags]  Validating Plant Config Gird

    FTPCPlantConfiguration.Test PlantConfiguration