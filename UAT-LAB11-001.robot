*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:7272/Registration.html
${BROWSER}    chrome
${FIRST_NAME}    Somsri
${LAST_NAME}    Sodsai
${EMAIL}    somsri@kkumail.com
${PHONE}    081-001-1234
${ORGANIZATION}    CS KKU

*** Test Cases ***
# Test Case 1: Register Success with all fields
Register With Organization
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Event Registration
    Input Text    id=firstname    ${FIRST_NAME}
    Input Text    id=lastname    ${LAST_NAME}
    Input Text    id=organization    ${ORGANIZATION}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    # You can add assertion here to validate the successful registration
    Page Should Contain    Success 
    Page Should Contain    Thank you for participating in our event
    Close Browser


# Test Case 2: Register Success without organization information
Register Without Organization
    Open Browser    ${URL}    ${BROWSER}
    # assert if registration page is opened
    Title Should Be    Event Registration
    Input Text    id=firstname    ${FIRST_NAME}
    Input Text    id=lastname    ${LAST_NAME}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    # You can add assertion here to validate the successful registration
    # assert if Success page is open and Success message is displayed with "Thank you for participating in our event" text
    Page Should Contain    Success 
    Page Should Contain    Thank you for participating in our event
    Close Browser
    
