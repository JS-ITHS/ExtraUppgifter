*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
Go To Web Page
    Load Page
    Verify Page Loaded
    Maximize Page
Load Page
    Go To  ${URL}
Verify Page Loaded
    Wait Until Page Contains  MediaMarkt Club
Maximize Page
    Maximize Browser Window
Search For Product
    Enter Search Term
    Submit Search
    Verify Search Completed
Enter Search Term
    Input Text  //*[@id="search-autocomplete"]/form/input[1]  ${SEARCH_TERM}
Submit Search
    Press Keys  //*[@id="search-autocomplete"]/form/input[1]  RETURN
Verify Search Completed
    Wait Until Page Contains  ${SEARCH_TERM}
Purchase Product
    Click Link  link:Köp
    Reload Page
    Sleep  2s
Verify Purchase Completed
    Wait Until Page Contains Element  //*[@id="rise-header"]/div[1]/div/div[5]/div/a/span[1]
    ${element_text}  Get Text  //*[@id="rise-header"]/div[1]/div/div[5]/div/a/span[1]
    ${actual_amount}  convert into number  ${element_text}
    Should Be True  ${actual_amount} > 0
End Web Test
    Close Browser