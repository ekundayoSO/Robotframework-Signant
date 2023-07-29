*** Settings ***
Documentation                                                       Test suite for new registration
Library                                                             SeleniumLibrary
Resource                                                            ../PageObject/RegisterPage.robot
Test Setup                                                          Open broswer with the url
Resource                                                            ../PageObject/Generic.robot





*** Test Cases ***
Register new user account
        Create username and password for new user
        Enter first and last name
        Enter phone number and click register button

