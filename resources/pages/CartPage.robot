*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PLACE_ORDER_BUTTON}    xpath=//button[text()='Place Order']
${NAME_FIELD}            id=name
${COUNTRY_FIELD}         id=country
${CITY_FIELD}            id=city
${CARD_FIELD}            id=card
${MONTH_FIELD}           id=month
${YEAR_FIELD}            id=year
${PURCHASE_BUTTON}       xpath=//button[text()='Purchase']
${CONFIRM_BUTTON}        xpath=//button[contains(@class,'confirm')]

*** Keywords ***
Click Place Order Button
    Wait Until Element Is Visible    ${PLACE_ORDER_BUTTON}    10s
    Click Element    ${PLACE_ORDER_BUTTON}

Fill Input Fields
    [Arguments]    ${name}    ${country}    ${city}    ${card}    ${month}    ${year}
    Wait Until Element Is Visible    ${NAME_FIELD}    10s
    Input Text    ${NAME_FIELD}    ${name}
    Input Text    ${COUNTRY_FIELD}    ${country}
    Input Text    ${CITY_FIELD}    ${city}
    Input Text    ${CARD_FIELD}    ${card}
    Input Text    ${MONTH_FIELD}    ${month}
    Input Text    ${YEAR_FIELD}    ${year}

Click Purchase Button
    Wait Until Element Is Visible    ${PURCHASE_BUTTON}    10s
    Click Element    ${PURCHASE_BUTTON}

Verify Purchase Confirmation
    Wait Until Page Contains    Thank you for your purchase!

Click Confirm Button
    Wait Until Element Is Visible    ${CONFIRM_BUTTON}    10s
    Click Element    ${CONFIRM_BUTTON}