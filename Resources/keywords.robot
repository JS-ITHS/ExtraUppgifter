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
    [Arguments]  ${search_term}  ${search_result}
    Enter Search Term  ${search_term}
    Submit Search
    Verify Search Completed  ${search_result}
Enter Search Term
    [Arguments]  ${search_term}
    Input Text  //*[@id="search-autocomplete"]/form/input[1]  ${search_term}
Submit Search
    Press Keys  //*[@id="search-autocomplete"]/form/input[1]  RETURN
Verify Search Completed
    [Arguments]  ${search_result}
    Wait Until Page Contains  ${search_result}
Purchase Product
    Click Link  link:Köp
    Sleep  2s
    Reload Page
Verify Purchase Completed
    Wait Until Page Contains Element  //*[@id="rise-header"]/div[1]/div/div[5]/div/a/span[1]
    ${element_text}  Get Text  //*[@id="rise-header"]/div[1]/div/div[5]/div/a/span[1]
    ${actual_amount}  convert into number  ${element_text}
    Should Be True  ${actual_amount} > 0
Go To Cart
    Click Element  //*[@id="rise-header"]/div[1]/div/div[5]/div/a
    Verify Search Completed  ${SEARCH_TERM}
Verify Added To Cart
    Page Should Contain  Age of Empires IV (code-in-a-box)
End Web Test
    Close Browser