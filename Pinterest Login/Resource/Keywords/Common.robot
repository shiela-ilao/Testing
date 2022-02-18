*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Begin Web Test
    [Arguments]  ${url}  ${browser}
    open browser  ${url}  ${browser}
    maximize browser window

Verify Page Loaded
    [Arguments]  ${expected_url}
    ${actual_url} =  get location
    should contain  ${actual_url}  ${expected_url}


End Web Test
    close browser