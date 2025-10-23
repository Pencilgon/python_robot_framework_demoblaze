*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}     id=sign-username
${PASSWORD_FIELD}     id=sign-password
${SIGNUP_SUBMIT_BTN}  xpath=//button[text()='Sign up']
${SIGNUP_CLOSE_BTN}   xpath=//div[@id='signInModal']//button[@class='btn btn-secondary' and text()='Close']

*** Keywords ***
Enter Signup Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USERNAME_FIELD}    10s
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Signup Button
    Wait Until Element Is Visible    ${SIGNUP_SUBMIT_BTN}    10s
    Click Button    ${SIGNUP_SUBMIT_BTN}

Close Signup Modal
    Wait Until Element Is Visible    ${SIGNUP_CLOSE_BTN}    5s
    Click Element    ${SIGNUP_CLOSE_BTN}
