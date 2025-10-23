*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNUP_BUTTON}    id=signin2
${LOGIN_BUTTON}     id=login2
${CART_BUTTON}      id=cartur

*** Keywords ***
Open Signup Modal
    Wait Until Element Is Visible    ${SIGNUP_BUTTON}    10s
    Click Element    ${SIGNUP_BUTTON}

Open Login Modal
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    10s
    Click Element    ${LOGIN_BUTTON}

Open Cart
    Wait Until Element Is Visible    ${CART_BUTTON}    10s
    Click Element    ${CART_BUTTON}

Select Category
    [Arguments]    ${category_name}
    ${locator}=    Set Variable    //a[normalize-space(text())="${category_name}"]
    Wait Until Element Is Visible    ${locator}    10s
    Click Element    ${locator}