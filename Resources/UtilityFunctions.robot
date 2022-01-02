*** Settings ***
Library  SeleniumLibrary
Variables   ../Library/Locators.py

*** Variables ***


*** Keywords ***
Do Table Validations
    [arguments]  ${TableLocator}