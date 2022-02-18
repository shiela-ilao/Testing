*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Data/ProfilePage.Robot

*** Keywords ***
Verify Account Options is displayed
    element should be visible  id:HeaderAccountOptionsFlyout

Verify Successful Logged in
    [Arguments]   ${exp_name}  ${exp_email}
    element should contain  ${USER_DETAILS}  ${exp_name}
    element should contain  ${USER_DETAILS}  ${exp_email}