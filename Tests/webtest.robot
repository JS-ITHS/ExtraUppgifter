*** Settings ***
Documentation  Test Suites for extra assignments.
Library  SeleniumLibrary

*** Test Cases ***
User Can Access Website
    [Documentation]  Trying to access and close website
    [Tags]  Test 1
    Open Browser  about:blank  chrome
    Go To  https://www.mediamarkt.se
    Wait Until Page Contains  MediaMarkt Club
    Close Browser


