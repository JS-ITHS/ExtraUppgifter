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
#User Can Add Object To Cart
#    [Documentation]  Trying to access website, search for a product and add to cart.
#    [Tags]  Test 1 - ExtraUppgift 1 First Test
#    Go To Web Page
#    Search For Product  Age of Empires IV (code-in-a-box)  Age of Empires IV (code-in-a-box)
#    Purchase Product
#    Verify Purchase Completed

#User Can Add Object To Cart and Verify Product Added To Cart
#    [Documentation]  Trying to access website, search for a product, add to cart and verify added to cart.
#    [Tags]  Test 2 - ExtraUppgift 1 Second Test
#    Go To Web Page
#    Search For Product  Age of Empires IV (code-in-a-box)  Age of Empires IV (code-in-a-box)
#    Purchase Product
#    Verify Purchase Completed
#    Go To Cart
#    Verify Added To Cart

# User Can Search For Product
#    [Documentation]  Searching for a game, verifying it shows up with Gherkin-syntax. LEAVING IT FOR LATER
#    [Tags]  Test 3 - ExtraUppgift 2
#    Go To Web Page
#    Search For Product  Game & Watch  Game & Watch

#User Can Navigate To Kampanjer
#    [Documentation]  Trying to navigate to kampanjer, verify that Våra Aktuella Kampanjer is visible.
#    [Tags]  Test 4 - ExtraUppgift 3
#    Go To Web Page
#    Go To Kampanjer
#    Verify Våra Aktuella Kampanjer Is Visible

User Can Navigate To Jobba Hos Oss
    [Documentation]  Trying to go to Jobba Hoss, scroll to the bottom of the page and verify that
    [Tags]  Test 5 - ExtraUppgift 4
    Go To Web Page
    Scroll To Bottom Page
    Go To Jobba Hos Oss
    Verify Jobba Hos Oss Loaded

User Can Sort By Letter In Category
    [Documentation]  Trying to choose a category, sort from a-ö and very A is first.
    [Tags]  Test 6 - ExtraUppgift 5
    Go To Web Page
    Mouse Over Kategorier
    Go To Spel & Gaming







