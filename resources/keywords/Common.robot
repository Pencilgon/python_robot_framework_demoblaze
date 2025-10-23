*** Settings ***
Library    SeleniumLibrary
Variables  ../testdata/testData.py

*** Keywords ***
Open Browser To Home
    Open Browser    ${base_url}    chrome
    Maximize Browser Window

Close Browser
    Close All Browsers
