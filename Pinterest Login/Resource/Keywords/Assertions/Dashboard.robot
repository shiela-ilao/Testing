*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Data/Dashboard.Robot

*** Keywords ***
Verify Dashboard Page Title
    wait until page contains  Home
    element text should be  ${PAGE_HEADER}  Home
