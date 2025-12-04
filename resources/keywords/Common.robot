*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${REMOTE_URL}    https://hub.browserstack.com/wd/hub

*** Keywords ***
Open Browser To URL
    [Arguments]    ${url}    @{rest}
    Open Browser    ${url}    chrome    remote_url=${REMOTE_URL}
    Maximize Browser Window

Close Browser
    Close Browser
