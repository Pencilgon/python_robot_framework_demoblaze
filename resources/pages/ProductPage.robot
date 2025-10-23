*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADD_TO_CART_BUTTON}    xpath=//a[text()='Add to cart']

*** Keywords ***
Select Product
    [Arguments]    ${product_name}
    ${locator}=    Set Variable    //a[text()='${product_name}']
    Wait Until Page Contains Element    ${locator}    10s
    Click Element    ${locator}

Add Product To Cart
    Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON}    10s
    Click Element    ${ADD_TO_CART_BUTTON}
