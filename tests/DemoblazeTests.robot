*** Settings ***
Variables    ../resources/testdata/testData.py
Resource     ../resources/keywords/Common.robot
Resource     ../resources/pages/HomePage.robot
Resource     ../resources/pages/SignupPage.robot
Resource     ../resources/pages/LoginPage.robot
Resource     ../resources/pages/ProductPage.robot
Resource     ../resources/pages/CartPage.robot

Suite Setup       Common.Open Browser To Home
Suite Teardown    Common.Close Browser


*** Test Cases ***
1. Sign Up New User
    HomePage.Open Signup Modal
    SignupPage.Enter Signup Credentials    ${username}    ${password}
    SignupPage.Click Signup Button
    Handle Alert    ACCEPT
    SignupPage.Close Signup Modal
    HomePage.Open Login Modal
    LoginPage.Enter Login Credentials      ${username}    ${password}
    LoginPage.Click Login Button

2. Verify Category Navigation
    HomePage.Select Category               ${category_phones}
    Wait Until Page Contains               ${product_phone}
    HomePage.Select Category               ${category_monitors}
    Wait Until Page Contains               ${product_monitor}
    HomePage.Select Category               ${category_laptops}
    Wait Until Page Contains               ${product_laptop}

3. Add Product To Cart
    HomePage.Select Category               ${category_laptops}
    ProductPage.Select Product             ${product_laptop}
    ProductPage.Add Product To Cart
    Handle Alert    ACCEPT

4. Place Order From Cart
    HomePage.Open Cart
    Wait Until Page Contains               ${product_laptop}
    CartPage.Click Place Order Button
    CartPage.Fill Input Fields             ${name}    ${country}    ${city}    ${card_number}    ${card_month}    ${card_year}
    CartPage.Click Purchase Button
    CartPage.Verify Purchase Confirmation
    CartPage.Click Confirm Button
