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

Empty First Name
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Event Registration
    Input Text    id=lastname    ${LAST_NAME}
    Input Text    id=organization    ${ORGANIZATION}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Page Should Contain    Please enter your first name!!
    Close Browser

Empty Last Name
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Event Registration
    Input Text    id=firstname    ${FIRST_NAME}
    Input Text    id=organization    ${ORGANIZATION}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Page Should Contain    Please enter your last name!!
    Close Browser

Empty First Name and Last Name
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Event Registration
    Input Text    id=organization    ${ORGANIZATION}
    Input Text    id=email    ${EMAIL}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Page Should Contain    Please enter your name!!
    Close Browser

Empty Email
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Event Registration
    Input Text    id=firstname    ${FIRST_NAME}
    Input Text    id=lastname    ${LAST_NAME}
    Input Text    id=organization    ${ORGANIZATION}
    Input Text    id=phone    ${PHONE}
    Click Button    id=registerButton
    Page Should Contain    Please enter your email!!
    Close Browser

Empty Phone number
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Event Registration
    Input Text    id=firstname    ${FIRST_NAME}
    Input Text    id=lastname    ${LAST_NAME}
    Input Text    id=organization    ${ORGANIZATION}
    Input Text    id=email    ${EMAIL}
    Click Button    id=registerButton
    Page Should Contain    Please enter your phone number!!
    Close Browser
