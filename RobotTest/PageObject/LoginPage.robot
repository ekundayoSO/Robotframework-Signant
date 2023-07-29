*** Settings ***
Documentation                                           Variables and keyords for login
Library                                                 SeleniumLibrary
Resource                                                ../PageObject/Generic.robot



*** Variables ***
${LOGIN_BUTTON}                                             xpath:/html/body/nav/ul/li[2]/a
${USERNAME_FIELD}                                           id:username
${PASSWORD_FIELD}                                           id:password
${SUBMIT_BUTTON}                                            xpath:/html/body/section/form/input[3]
${USERNAME}                                                 ${EMPTY}
${PASSWORD}                                                 ${EMPTY}



*** Keywords ***
Enter username and password
            [Arguments]
            Wait and click element                   ${LOGIN_BUTTON}
            Wait and input text                      ${USERNAME_FIELD}              ${USERNAME}
            Wait and input text                      ${PASSWORD_FIELD}              ${PASSWORD}
Click on submit button and close browser
            Wait and click element                   ${SUBMIT_BUTTON}
            Page Should Contain                      User Information
            Close Browser