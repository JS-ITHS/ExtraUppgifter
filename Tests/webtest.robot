*** Settings ***
Documentation  Test Suites for extra assignments.
Resource  ../Resources/keywords.robot
Library  ../Scripts/convert_int.py
Library  SeleniumLibrary
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.mediamarkt.se
${SEARCH_TERM}  Age of Empires IV (code-in-a-box)

*** Test Cases ***
User Can Add Object To Cart
    [Documentation]  Trying to access website, search for a product and add to cart.
    [Tags]  Test 1 - ExtraUppgift 1 First Test
    Go To Web Page
    Search For Product
    Purchase Product
    Verify Purchase Completed

User Can Add Object To Cart and Verify Product Added To Cart
    [Documentation]  Trying to access website, search for a product, add to cart and verify added to cart.
    [Tags]  Test 2 - ExtraUppgift 2 Second Test
    Go To Web Page
    Search For Product
    Purchase Product
    Verify Purchase Completed





