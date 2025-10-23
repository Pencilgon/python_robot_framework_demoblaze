*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_USERNAME_FIELD}    id=loginusername
${LOGIN_PASSWORD_FIELD}    id=loginpassword
${LOGIN_SUBMIT_BTN}        xpath=//button[text()='Log in']
${LOGIN_CLOSE_BTN}         xpath=//div[@id='logInModal']//button[@class='btn btn-secondary' and text()='Close']

*** Keywords ***
Enter Login Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${LOGIN_USERNAME_FIELD}    10s
    Input Text    ${LOGIN_USERNAME_FIELD}    ${username}
    Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}

Click Login Button
    Wait Until Element Is Visible    ${LOGIN_SUBMIT_BTN}    10s
    Click Button    ${LOGIN_SUBMIT_BTN}
