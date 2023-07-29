*** Settings ***
Documentation                                               Test suite for valid login
Library                                                     SeleniumLibrary
Resource                                                    ../PageObject/LoginPage.robot
Resource                                                    ../PageObject/Generic.robot
Test Setup                                                  Open broswer with the url


*** Test Cases ***
Validate successful login
                Enter username and password
                Click on submit button and close browser