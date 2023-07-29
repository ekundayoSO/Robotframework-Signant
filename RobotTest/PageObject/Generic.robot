*** Settings ***
Documentation                                               A resource file with reusable keywords and variables
Library                                                     SeleniumLibrary



*** Variables ***
${URL}                                                      http://127.0.0.1:5000
${BROWSER}                                                  ${EMPTY}


*** Keywords ***
Open broswer with the url
            Open Browser        ${URL}      ${BROWSER}
            Maximize Browser Window

Wait and click element
            [arguments]         ${page_locator}
            Wait Until Element Is Visible        ${page_locator}        timeout=10
            Click Element    ${page_locator}

Wait and input text
            [Arguments]         ${page_locator}     ${text}
            Wait Until Element Is Visible               ${page_locator}        timeout=10
            Input Text                                  ${page_locator}      ${text}
